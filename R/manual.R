setClass("CUmodule", contains = "RC++Reference")
setClass("CUfunction", contains = "RC++Reference")
setClass("CUcontext", contains = "RC++Reference")

setClass("cudaPtr", contains = "RC++Reference")
setClass("cudaPtrWithLength", representation(nels = "integer", elSize = "integer"), contains = "RC++Reference")
setClass("cudaFloatPtr", contains = "cudaPtr")
setClass("cudaIntPtr", contains = "cudaPtr")

setClass("cudaFloatArray", contains= "cudaPtrWithLength")
setClass("cudaIntArray", contains= "cudaPtrWithLength")

  # This is 0 based.
setClass("CUDeviceNum", contains = "integer")

tmp = function(from)   new("CUDeviceNum", as.integer(from - 1L))
setAs("numeric", "CUDeviceNum", tmp)
setAs("integer", "CUDeviceNum", tmp)

setMethod("[[", c("CUmodule", "character", "missing"),
           function(x, i, j, ...) {
              getFunction(x, i)
           })
setMethod("$", c("CUmodule"),
           function(x, name) {
              getFunction(x, name)
           })

getFunction =
function(module, name)
{
  ans = .Call("R_Module_getFunction", as(module, "CUmodule"),  as.character(name))
  if(is.integer(ans))  #  !is(ans, "RC++Reference"))
    raiseError(ans, msg = c("failed to get function ", name))

  ans
}

loadModule =
function(filename, ctx = cuGetContext(TRUE), ...)
{
  filename = path.expand(filename)
  if(!file.exists(filename))
    stop("no such file ", filename)

  force(ctx)
  
  ans = .Call("R_loadModule", as.character(filename))
  if(is.integer(ans))  #  !is(ans, "RC++Reference"))
    raiseError(ans, msg = c("failed to load module ", filename))
  else
    ans
}


raiseError =
function(status, msg = character(), ...)
{
 i =  match(status, CUresultValues)
 type = names(CUresultValues)[i]
 e = simpleError(paste(c(msg, names(status), "(", type, ")"), collapse = " "), ...)
 class(e) = c(type, class(e))
 stop(e)
}


createContext =
function(flags = 0L, device = 1L)
{
   ans = .Call("R_createContext", as.integer(flags), as(as(device, "CUDeviceNum"), "integer"))
  if(is.integer(ans))  #  !is(ans, "RC++Reference"))
     raiseError(ans, msg = c("failed to create context"))
   
   ans
}



.cuda =
function(fun, ..., gridDim, blockDim, sharedMemBytes = 0L, stream = NULL, inplace = FALSE)
{
   fun = as(fun, "CUfunction")

   if(length(gridDim) < 3)
     gridDim = c(gridDim, c(1L, 1L, 1L))[1:3]
   if(length(blockDim) < 3)
     blockDim = c(blockDim, c(1L, 1L, 1L))[1:3]   
   args = list(...)
   
   .Call("R_cuLaunchKernel", fun, as.integer(gridDim), as.integer(blockDim), args, as.integer(sharedMemBytes), stream)
}


getElementSize =
function(obj, type = typeof(obj))
{  
   switch(type,
           logical=, integer= 4L,
           double=, numeric = 8L,
           stop("don't know size of elements"))
}

cudaAlloc = cudaMalloc =
function(numEls, sizeof = 4L, elType = NA)
{
  if(missing(sizeof) && !missing(elType))
    sizeof = getElementSize(type = elType)

  
  ans = .Call("R_cudaMalloc", as.integer(numEls * sizeof))
  if(is.integer(ans))  #  !is(ans, "RC++Reference"))
     raiseError(ans, msg = c("failed to create context"))

  if(!is.na(elType)) {
    k = sprintf("cuda%sArray", if(elType %in% c("integer", "logical")) "Int" else if(elType %in% c("float", "double", "numeric")) "Float" else stop("???"))
    ans = new(k, ref = ans@ref, nels = numEls, elSize = sizeof)
  }

  ans
}

copyToDevice =
function(obj, to = cudaMalloc(length(obj), elType = typeof(obj)))
{
  ans = .Call("R_cudaMemcpy", obj, to)
  if(is(ans, "CUresult"))
    raiseError(ans, "copying data to GPU")

  to
}


copyFromDevice =
function(obj, nels, type)
{
  nels = as.integer(nels)
  ans = if(type == "integer")
          .Call("R_getCudaIntVector", obj, nels)
        else if(type == "logical")
          .Call("R_getCudaIntVector", obj, nels)
        else if(type == "float" || type == "numeric")
          .Call("R_getCudaFloatVector", obj, nels)

  if(is(ans, "CUresult"))
      raiseError(ans, "copying data on device")

  ans
}

# Allow
#  p = cudaMalloc()
#  p[] = x
# to be shorthand for this.

setMethod("[", c("cudaFloatArray", "missing", "missing"),
           function(x, i, j, ...) {
             copyFromDevice(x, x@nels, type = "float")
           })

setMethod("[", c("cudaIntArray", "missing", "missing"),
           function(x, i, j, ...) {
             copyFromDevice(x, x@nels, type = "integer")
           })


setMethod("[<-", c("cudaPtrWithLength", "missing", "missing"),
           function(x, i, j, ..., value) {
             copyToDevice(rep(value, length = x@nels), x)
           })


# Should be able to use the single generic version of this above
# and have the C code avoid copying the data.
setMethod("[<-", c("cudaFloatArray", "missing", "missing"),
           function(x, i, j, ..., value) {
             copyToDevice(rep(as.numeric(value), length = x@nels), x)
           })

setMethod("[<-", c("cudaIntArray", "missing", "missing"),
           function(x, i, j, ..., value) {
             copyToDevice(rep(as.integer(value), length = x@nels), x)
           })




cuInit =
function(flags = 0L)
{  
  ans = .Call("R_cuInit", as.integer(flags))
  if(ans != 0)
     raiseError(ans, "failed to initialize CUDA")
  ans
}

cuGetContext =
function(create = FALSE)
{  
  ans = .Call("R_cuCtxGetCurrent")
  if(is.integer(ans))
     raiseError(ans, "failed to get current CUDA context")

  if(is.null(ans) && create)
    ans = createContext()
  
  ans
}



cudaVersion = cuVersion =
function()
{
  structure(.Call("R_cuGetVersion"), names = c("driver", "runtime"))
}


cudaErrorString =
function()
  .Call("R_cudaGetLastError")




cudaMemInfo =
function()
{
  ans = .Call("R_cuMemGetInfo")
  if(is.integer(ans))
     raiseError(ans, "failed to get current CUDA context")

  ans[3] = ans[1]/ans[2]
  names(ans) = c("free", "total", "% free")
  ans
}

