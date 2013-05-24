getNumDevices =
function()
{
  .Call("R_cudaGetDeviceCount")
}

getDeviceProps = getDeviceProperties =
  # Simpler wrapper to get the device properties
  # We use 1-based counting here. libcuda uses
  #' @example  getDeviceProps(1L)
function(num = 1L)
{
  if(num < 1L || num > getNumDevices())
    stop("invalid GPU device number ", num)
  
  .cudaGetDeviceProperties(NULL, num - 1L)[[2]]
}

cuDeviceGetAttributes =
function(dev = 1L)
{
  attrs = CUdevice_attributeValues
  tmp = sapply(unclass(attrs)[-length(attrs)], cuDeviceGetAttribute, as(dev, "CUdevice"))
  structure(tmp, names = gsub("CU_DEVICE_ATTRIBUTE_", "", names(tmp)))
}

