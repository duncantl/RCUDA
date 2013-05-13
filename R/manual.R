setClass("CUmodule", contains = "RC++Reference")
setClass("CUfunction", contains = "RC++Reference")
setClass("CUcontext", contains = "RC++Reference")

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
 e = simpleError(paste(c(msg, "(", type, ")"), collapse = " "), ...)
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



cudaAlloc = cudaMalloc =
function(numEls, sizeof = 4L)
{
  .Call("R_cudaMalloc", as.integer(numEls * sizeof))
}


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


copyToDevice =
function(obj, to = cudaMalloc(length(obj), switch(typeof(obj), logical=, integer= 4L, double=, numeric = 8L, stop("don't know size of elements"))))
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
