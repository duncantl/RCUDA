getNumDevices =
function()
{
  .Call("R_cudaGetDeviceCount")
}
