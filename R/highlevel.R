if(FALSE) {
  setClass("PitchMemory2D",
            representation(pitch = "size_t", dim = "integer", elType = "character", elSize = "integer"),
            contains = "RCReference")
} else
  setOldClass("PitchMemory2D")

mallocPitch =
  #
  # This is a higher-level version of cudaMallocPitch
  # It will determine the size of the element and then
  # allocate it, but also keep this information with the result.
  # This allows us to make sense of the memory and an R object to which
  # we want to put in that memory.  See the [<- method below.
  # 
function (width, height, elType = NA)
{
  if(is.na(elType))
    return(cudaMallocPitch(width, height))

  size = getElementSize(type = elType)
  ans = cudaMallocPitch( width * size, height )

#  new("PitchMemory2D", ans[[1]], pitch = as(ans[[2]], "size_t"), elType = elType, elSize = size, dim = c(width, height))
 ans$pitch = as(ans[[2]], "size_t")
 ans$elType = elType
 ans$elSize = size
 ans$dim = c(width, height)
 structure(ans, class = "PitchMemory2D")
}

`[<-.PitchMemory2D` =
 function(x, i, j, force = FALSE, ..., value)
{

  if(!force) {
                  # Check the dimensions are consistent with the values              
    if(!all(dim(value) == x$dim))
      stop("incompatible dimensions")
  }
  val = convertToPtr(value, x$elType)
  cudaMemcpy2D(x$devPtr, x$pitch, val, nrow(value)*x$elSize, nrow(value)* x$elSize, ncol(value), cudaMemcpyHostToDevice)            
  x
}

if(FALSE)
setMethod("[<-", c("PitchMemory2D", "missing", "missing", value = "matrix"),
          function(x, i, j, force = FALSE, ..., value) {

            if(!force) {
                  # Check the dimensions are consistent with the values              
              if(!all(dim(value) == x@dim))
                stop("incompatible dimensions")
            }
            val = convertToPtr(value, x@elType)
            cudaMemcpy2D(x@ref, x@pitch, val, nrow(value)*x@elSize, nrow(value)* x@elSize, ncol(value), cudaMemcpyHostToDevice)
            x
          })


convertToPtr =
function(value, type)
{
  if(type == "float") 
    .Call("R_makeFloatArray", value)    
  else if(is(value, "externalptr") || type %in% c("int", "double"))
    .Call("R_getRObjectPointer", value)
  else
    stop("no mechanism to handl this yet")
}


