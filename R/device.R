getNumDevices =
function()
{
  .Call("R_cudaGetDeviceCount")
}

getDeviceProps =
  # Simpler wrapper to get the device properties
  # We use 1-based counting here. libcuda uses
  #' @example  getDeviceProps(0)
function(num)
{
  if(num < 1 || num > getNumDevices())
    stop("invalid GPU device number")
  
  .cudaGetDeviceProperties(NULL, num - 1L)
}


