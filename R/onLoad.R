.onLoad =
function(...)
{
  if(!getOption("NoInitializeCUDAOnLoad", FALSE)) {
    .Call("R_cuInit", 0L, FALSE)
  }

  compareCUDAVersions()
  
  # temporary. Investigating a crash 
  # when unloading the DLL when using CUDA 5.5
  # This seems to avoid it.
  .C("R_initForCUDAFiveFive")
}


compareCUDAVersions =
function(cur = cudaVersion(), orig = CudaVersionNumber)
{
  a = splitCUDAVersion( cur["runtime"] )
  b = splitCUDAVersion( orig)

  if(a["major"] != b["major"])
      stop("RCUDA was installed for CUDA version ", b, " but run time is version ", a)
  if(a["minor"] < b["minor"])
      warning("RCUDA was installed for CUDA minor version ", b, " but run time is earlier than this: version ", a)  
}


splitCUDAVersion =
function(val)
{
   c(major = as.integer(val/1000L), minor = as.integer(val%%100)/10L)
}
