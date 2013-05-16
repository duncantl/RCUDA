# This is different from the code generation functions in ~/GitWorkingArea/RClangSimple/inst/generateCode/
# as we are writing these for CUDA.

# Generate the R code
#  for functions returning CUresult, raise the error if not success.
#     Actually, do this in C code?
#
# for routines with name *Can*, return a logical. e.g. cuDeviceCanAccessPeer
#
#  Handle more than one return argument - e.g. R_cuModuleGetGlobal
#


# Broke cuCtxGetLimit - doesn't recognize the limit.
#   but says no error. is this the actual value?
#
# Doesn't handle cuDeviceGetName - string
#
# modify isOutPointerType - just a pointer?
#    But have to combine the string and the length to ignore both for the R code
#
# Get the typedef name for the enums
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
function(fun)
{
  if(length(fun$params) == 0 || !getName(fun$returnType) %in% c("CUresult"))
    return(integer())
  which(sapply(fun$params, isOutPointerType))
}

cuda.createNativeProxy =
function(fun, name = sprintf("R_%s", funName), typeMap = TypeMap, funName = gsub("_v[0-9]$", "", getName(fun)))
{
   returnArg = returnsValueViaArg(fun)
if(length(returnArg) > 1) browser()   
   if(length(returnArg) == 0) 
     return(createNativeProxy(fun, name, typeMap))
   else
     cuResult = TRUE


   
   argNames = names(fun$params)

#   cuResult = getName(f$returnType) == "CUresult"
#   outArg1 = isOutPointerType(fun$params[[1]])
#   returnFirstArg = cuResult && outArg1
   
   if(length(returnArg)) {
     actualArgs = fun$params[- returnArg ]
         #XXX have to handle if there is more than one being returned.
     firstArgType = getPointeeType(getType(fun$params[[returnArg[1] ]])) #getCanonicalType(getPointeeType(getType(fun$params[[1]])))
   } else
     actualArgs = fun$params

   sig = sprintf("%s(%s)", name, paste(sprintf("SEXP r_%s", names(actualArgs)), collapse = ", "))

   cvtCode = if(length(returnArg)) {
                if(length(returnArg) > 1)
                  sapply(seq(along = returnArg), function(i) {
                                        ty = getPointeeType(getType(fun$params[[returnArg[i]]]))
                                        val = convertValueToR(ty, names(fun$params)[returnArg[i]], typeMap = typeMap, rvar = character())
                                        sprintf("SET_VECTOR_ELT(r_ans, %d, %s);", i-1L, val)
                                      })
                else
                  convertValueToR(firstArgType, names(fun$params)[returnArg[1]], typeMap = typeMap)     
             } else
                convertValueToR(fun$returnType, "ans", typeMap = typeMap)

   localVars = makeLocalVars(actualArgs, sprintf("r_%s", names(actualArgs)), names(actualArgs))

   if(cuResult)
     localVars = c(localVars, "CUresult ans;")

   if(length(returnArg)) {
     localVars = c(sapply(returnArg, function(i) {
                                        ty = getPointeeType(getType(fun$params[[i]]))
                                        sprintf("%s %s;", getName(ty), names(fun$params)[i])
                                     }),
                    localVars)
   }
   
   argPrefix = rep("", length(fun$params))
   argPrefix[returnArg] = "&"
     
   call = sprintf("%s%s(%s);",
                  if(!isVoidType(fun$returnType)) "ans = ",
                  funName, paste(argPrefix, names(fun$params), collapse = ", "))   

   
   
   code = c("SEXP",
            sig,
            "{",
            "SEXP r_ans = R_NilValue;",
            localVars,
            call,
            if(cuResult)
                 checkStatusCode,
            if(length(returnArg) > 1) 
              c(sprintf("PROTECT(r_ans = NEW_LIST(%d));", length(returnArg)),
                cvtCode,
                sprintf("UNPROTECT(%d);", length(returnArg)))
             else
             paste("r_ans =", cvtCode, ";"),
            "return(r_ans);",
            "}"
           )
    CRoutineDefinition(name, code, length(fun$params) - length(returnArg), as.character(NA))
}


cuda.createRProxy =
function(fun, name = gsub("_v[0-9]$", "", getName(fun)), argNames = names(fun$params),
          nativeProxyName = sprintf("R_%s", gsub("_v[0-9]$", "", getName(fun))),
          PACKAGE = NA, defaultValues = character(), guessDefaults = FALSE,
          typeMap = TypeMap)
{

   returnArg = returnsValueViaArg(fun)
   if(length(returnArg) > 0) {
     fun$returnArgTypes = lapply(fun$params[returnArg], function(x) getPointeeType(getType(x)))
     if(length(returnArg) == 1)
       fun$returnArgTypes = fun$returnArgTypes[[1]]     
     fun$params = fun$params[ - returnArg ]
   }
   
   fn = createRProxy(fun, name, argNames, nativeProxyName, PACKAGE, defaultValues, guessDefaults, typeMap)
   txt = fn@code

   map = lookupTypeMap(typeMap, getName(fun$returnArgTypes), "RcoerceResult", fun$returnArgTypes, name = "ans")
   
   fn@code = c(
                paste("ans =", txt),
               "if(is(ans, 'CUresult') && ans != 0)",
                sprintf("    raiseError(ans, '%s')", nativeProxyName),
               if(length(map)) map else "ans"
               )
   fn
}


# Move these into RCIndex
isVoidType =
function(type)
  getTypeKind(type) == CXType_Void

isPointer = # isPointerType or isPointer?
function(type)
  getTypeKind(type) == CXType_Pointer
  

isOutPointerType =
function(parm)
{
  ty = getType(parm)
 
  if(!isPointer(ty))
    return(FALSE)

  return(!(getName(getPointeeType(ty)) %in%  c("const char", "const void", "CUfunction")))

  elTy = getCanonicalType(getPointeeType(ty))
  k = getTypeKind(elTy)
  k %in% c(CXType_Bool, CXType_UShort, CXType_UInt, CXType_ULong, CXType_ULongLong, CXType_UInt128, CXType_Int, CXType_Short, CXType_Long, CXType_Double, CXType_Float)
}

checkStatusCode =
  c("if(ans)",
      "   return(R_cudaErrorInfo(ans));")




writeCode =
function(code, file, includes = '"RCUDA.h"', mode = "w")  
{
  con = file(file, mode)
  on.exit(close(con))
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
 writeCode(mod.Ccode, files[1])
 writeCode(mod.Rcode, files[2])

 cat("export(", paste(sapply(mod.Rcode, slot, "name"), collapse = ",\n"), ")", sep = "\n")
}
