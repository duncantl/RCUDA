# This is different from the code generation functions in ~/GitWorkingArea/RClangSimple/inst/generateCode/
# as we are writing these for CUDA.

# Deal with CUdeviceptr
#    dereferncing it as an R argument.
#    It is an unsigned long long, but really a pointer
#    cuModuleGetGlobal() is on routine where we get a CUdeviceptr.
#    uMemsetD2D32Async is where we pass one to a routine.
#     Need to understand what is needed before we figure out how to generate the code.
#     When we do, we can use the typeMap.
#
# Mem routines
#
# for routines with name *Can*, return a logical. e.g. cuDeviceCanAccessPeer
#
# Apply the coerce R result type map when more than one argument being returned in nativeGen.R
#   low priority
#
# Doesn't handle cuDeviceGetName - string
#
#  Pointers may be legitimate inputs, e.g. cuMemFreeHost.
#
# modify isOutPointerType - just a pointer?
#    But have to combine the string and the length to ignore both for the R code
##############
# [Done] Get R class name for references which are pointers, e.g. cuMemHostAlloc() uses void *!
#      Changed to voidPtr. Replace any * with Ptr. So could end up with, e.g., voidPtrPtr
# [Done] Generate the R code
#  [Done] for functions returning CUresult, raise the error if not success.
#   [No]  Actually, do this in C code?
#
# [Done] Handle more than one return argument - e.g. R_cuModuleGetGlobal
#
# [Doesn't work even in C code] Broke cuCtxGetLimit - doesn't recognize the limit.
#   but says no error. is this the actual value?
#   Did this ever work?
#
# [Done] Get the typedef name for the enums
#      e.g. cuda.createNativeProxy(r.cu$cuCtxSetLimit)
#
# [Done] Get the type name for CUcontext to be that and not struct CUctx_st
#
# [Done] cuCtxGetApiVersion() context is first parameter, the pointer is the second.
#    So change logic to detect if CUresult is returned, then find a pointer variable
#     that isn't one of our regular types, e.g. CUcontext, CUfunction and so on.#
#
#

TypeMap = list(CUdeviceptr = list(convertValueToR = function(name, ..., type = type) sprintf('R_createRef((void*) %s, "CUdeviceptr")', name)),
               CUdevice = list(RcoerceResult = function(name, ..., type) sprintf("as(%s, 'CUdevice')", name)))

returnsValueViaArg =
function(fun, routineName = "")
{
  params = fun@params
  if(length(params) == 0 || !getName(fun@returnType) %in% c("CUresult", "cudaError_t"))
    return(integer())
  i = which(sapply(params, isOutPointerType, routineName))
    # check for the next parameter being int len.
  i[ ! sapply(i, function(i) length(params) > i && names(params)[i + 1] == "len" && isIntegerType(getType(params[[i+1]]))) ]
}



returnsString =
  function(fun)
     length(fun@params) && isStringType(getType(fun@params[[1]])) && isIntType(getType(fun$params[[2]]))

cuda.createNativeProxy =
function(fun, name = sprintf("R_auto_%s", funName), typeMap = TypeMap, funName = gsub("_v[0-9]$", "", getName(fun)), stringSize = 10000L)
{

   returnArg = returnsValueViaArg(fun, getName(fun))

   returnsString = returnsString(fun)

   if(returnsString) {
     returnsString = TRUE
     returnArg = unique(c(1L, returnArg))
     returnArg = c(returnArg, returnArg + 1L)
     stringVarName = names(fun@params)[returnArg[1]]
     stringLengthName = names(fun@params)[returnArg[1] + 1L]     
#     fun@params = fun@params[ - seq(returnArg[1], length = 2) ]
   }

   if(length(returnArg) == 0) 
     return(createNativeProxy(fun, name, typeMap))
   else
     cuResult = TRUE   

   argNames = names(fun@params)

   if(length(returnArg)) {
     actualArgs = fun@params[- returnArg ]
     
         #XXX have to handle if there is more than one being returned.
     firstArgType = getPointeeType(getType(fun@params[[returnArg[1] ]])) #getCanonicalType(getPointeeType(getType(fun$params[[1]])))
   } else
     actualArgs = fun@params


   sig = sprintf("%s(%s)", name, paste(sprintf("SEXP r_%s", names(actualArgs)), collapse = ", "))

   cvtCode = if(length(returnArg)) {
                if(length(returnArg) > 1 && !returnsString)
                  unlist(lapply(seq(along = returnArg), function(i) {
                                        ty = getPointeeType(getType(fun@params[[returnArg[i]]]))
                                        val = convertValueToR(ty, names(fun@params)[returnArg[i]], typeMap = typeMap, rvar = "")
                                        if(length(val) > 1 || inherits(val, "AsIs"))
                                           c("{", val[-length(val)],
                                             sprintf("SET_VECTOR_ELT(r_ans, %d, %s);", i-1L, gsub(";$", "", val[length(val)])), "}")
                                        else
                                           sprintf("SET_VECTOR_ELT(r_ans, %d, %s);", i-1L, val)
                                      }))
                else {
                  if(returnsString)
                     sprintf("mkString(%s)", names(fun@params)[returnArg[1]])
                  else
                     convertValueToR(firstArgType, names(fun@params)[returnArg[1]], typeMap = typeMap)
                }
             } else
                convertValueToR(fun@returnType, "ans", typeMap = typeMap)

   localVars = makeLocalVars(actualArgs, sprintf("r_%s", names(actualArgs)), names(actualArgs))

   if(cuResult)
     localVars = c(localVars, "CUresult ans;")

   if(length(returnArg)) {
      if(returnsString)
          localVars = c(localVars, sprintf("char %s[%d];\n    int %s = %d;", stringVarName , as.integer(stringSize), stringLengthName, as.integer(stringSize)))
      else
          localVars = c(sapply(returnArg, function(i) {
                                        ty = getPointeeType(getType(fun@params[[i]]))
                                        sprintf("%s %s;", getName(ty), names(fun@params)[i])
                                     }),
                    localVars)


   }

   if(FALSE && returnsString) {
      args = names(fun@params)
      args[returnArg[1] + 1] = stringSize
      args = paste(args, collapse = ", ")
   } else {
      argPrefix = rep("", length(fun@params))
      if(!returnsString)
         argPrefix[returnArg] = "&"
      args = paste(argPrefix, names(fun@params), collapse = ", ")
   }
     
   call = sprintf("%s%s(%s);",
                  if(!isVoidType(fun@returnType)) "ans = ",
                  funName, args)   


   
   code = c("SEXP",
            sig,
            "{",
            "SEXP r_ans = R_NilValue;",
            localVars,
            call,
            if(cuResult)
                 checkStatusCode,
            if(length(returnArg) > 1 && !returnsString) 
              c(sprintf("PROTECT(r_ans = NEW_LIST(%d));", length(returnArg)),
                unlist(cvtCode),
                sprintf("UNPROTECT(%d);", length(returnArg)))
             else if(inherits(cvtCode, "AsIs") || length(cvtCode) > 1)
                cvtCode
             else
              paste("r_ans =", cvtCode, ";"),
            "return(r_ans);",
            "}"
           )
    CRoutineDefinition(name, code, length(fun@params) - length(returnArg), as.character(NA))
}


cuda.createRProxy =
function(fun, name = gsub("_v[0-9]$", "", getName(fun)), argNames = names(fun@params),
          nativeProxyName = sprintf("R_auto_%s", gsub("_v[0-9]$", "", getName(fun))),
          PACKAGE = NA, defaultValues = character(), guessDefaults = FALSE,
          typeMap = TypeMap)
{
   returnArg = returnsValueViaArg(fun)

   returnsString = returnsString(fun)

   if(returnsString) {
     fun@params = fun@params[ - c(1, 2) ]
   }
   
   if(length(returnArg) > 0) {
     fun$returnArgTypes = lapply(fun@params[returnArg], function(x) getPointeeType(getType(x)))
     if(length(returnArg) == 1)
       fun$returnArgTypes = fun$returnArgTypes[[1]]     
     fun@params = fun@params[ - returnArg ]
   }
   
   fn = createRProxy(fun, name, argNames, nativeProxyName, PACKAGE, defaultValues, guessDefaults, typeMap)
   txt = fn@code

   if(length(fun$returnArgTypes) == 1) #XXX deal with more
      map = lookupTypeMap(typeMap, getName(fun$returnArgTypes), "RcoerceResult", fun$returnArgTypes, name = "ans")
   else
     map = character()
   
   fn@code = c(
                paste("ans =", txt),
               "if(is(ans, 'CUresult') && ans != 0)",
                sprintf("    raiseError(ans, '%s')", nativeProxyName),
               if(length(map)) map else "ans"
               )
   fn
}


# Move these into RCIndex
  

isOutPointerType =
function(parm, routineName = "")
{
  ty = getType(parm)

  if(getName(parm) %in% c('userData')) # in stream callback. is void *, but not a return argument. But some void * maybe, but not const.
    return(FALSE)
 
  if(!isPointerType(ty))
    return(FALSE)

  pty = getPointeeType(ty)
  name = getName(pty)
     # need to handle const Type *, check no *
     # name of canonical type or not?
  isConst =  grepl("const", name)  &&  !grepl("*", name, fixed = TRUE)
  isStruct =  grepl("struct", name)  &&  !grepl("*", name, fixed = TRUE)
#  used to include !isStruct &&   but for cudaMalloc3D, this is a problem. What will this break.
  return(getName(ty) != "char *" && !isConst && !(name %in%  c("const char", "const void", "void", "CUfunction"))) # , "CUdevice"

  
  elTy = getCanonicalType(getPointeeType(ty))
  k = getTypeKind(elTy)
  k %in% c(CXType_Bool, CXType_UShort, CXType_UInt, CXType_ULong, CXType_ULongLong, CXType_UInt128, CXType_Int, CXType_Short, CXType_Long, CXType_Double, CXType_Float)
}


checkStatusCode =
  c("if(ans)",
      "   return(R_cudaErrorInfo(ans));")


###############

writeCode =
function(code, file, includes = if(lang != "R") '"RCUDA.h"', mode = "w", comment = if(lang == "R") "#" else "//",
         lang = guessLanguage(code))
{
  con = file(file, mode)
  on.exit(close(con))
  cat(comment, "Generated programmatically at", as.character(Sys.time()), "\n", file = con)
  if(length(includes))
    cat(sprintf('#include %s', includes), sep = "\n", file = con)
  
  invisible(lapply(code, addToFile, con) )
}



generateCode =
function(funs, fileName)
{  
 mod.Ccode = lapply(funs, cuda.createNativeProxy)
 mod.Rcode = lapply(funs, cuda.createRProxy)

 files = sprintf("../%s/auto%s.%s", c("src", "R"), fileName, c("c", "R")) 
 writeCode(mod.Ccode, files[1], lang = "C")
 writeCode(mod.Rcode, files[2], lang = "R")

 cat("export(", paste(sapply(mod.Rcode, slot, "name"), collapse = ",\n"), ")", sep = "\n")
}

guessLanguage =
function(code)
{
  if(is.list(code))
    r = any(lapply(code, is, "RFunctionDefinition"))
  else
    r = is(code, "RFunctionDefinition")    

  if(r) "R" else "C"
}
