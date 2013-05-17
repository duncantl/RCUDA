# See http://docs.nvidia.com/cuda/profiler-users-guide/index.html

profileCUDA =
function(expr, file = tempfile(), ...)
{
  cudaProfiler(file, ...)
  expr
  cudaStopProfiler()
  if(!file.exists(file))
    warning("no output generated from profiler")
  else
    readCUDAProfile(file)
}

cudaStopProfiler =
function()
  .Call("R_cudaProfilerToggle", FALSE)

cudaStartProfiler =
function()
  .Call("R_cudaProfilerToggle", TRUE)

cudaProfiler =
function(file = tempfile(),
         config = getOption("CUDAProfilerConfig", system.file('prof.config', package = 'RCUDA')),
         format = "csv", start = TRUE)
{
  if(is.character(format)) {
     i = grep(format, names(cudaOutputMode_tValues), ignore.case = TRUE)
     if(length(i) != 1)
       stop("don't recognize format")
     format = cudaOutputMode_tValues[i]
   } else {
     i = match(format, cudaOutputMode_tValues)
     if(is.na(i))
       stop("unrecognized value for format")
   }
  
  if(!file.exists(dirname(file)))
    stop("no such file or directory for the profiler output file")
  
  ans = .Call("R_cudaProfilerInitialize", config, file, format)

  if(ans != 0)
     raiseError(ans, "failed to initialize CUDA")
  
  if(start)
    cudaStartProfiler()

  file
}


readCUDAProfile =
function(file, csv = TRUE)
{
  if(!csv)
    return(readCUDAProfileKeys(file))
  
  txt = readLines(file)
  txt = grep("^NV_Warning:", txt, value = TRUE, invert = TRUE)
  i = grep("^# ", txt)
  info = gsub("^# ", "", txt[i])
  con = textConnection(txt[-i])
  on.exit(close(con))
  structure(read.csv(con), metadata = info)
}

readCUDAProfileKeys =
function(file)
  stop("can't read ", file, ". reading this format not implemented yet")

