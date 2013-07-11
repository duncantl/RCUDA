.onLoad =
function(...)
{
  .Call("R_cuInit", 0L, FALSE)
  # temporary. Investigating a crash 
  # when unloading the DLL when using CUDA 5.5
  # This seems to avoid it.
  .C("R_initForCUDAFiveFive")
}


