nvcc = 
#
#
# @example
#  f = system.file("sampleKernels", "dnormOutput.cu", package = "RCUDA")
#  nvcc(f)
#  nvcc(f, target = "fatbin")
#  nvcc(f, target = "cubin")
#  nvcc(f, "-use_fast_math")
#  nvcc(f, gencode = "arch=compute_10,code=sm_10")
#
#  Can also check the names of the .opts against the options supported by nvcc.
#  See the code in nvccOpts.R in the top-level directory of the package.
#
function(file, out = swapExtension(file, target), target = "ptx", ..., .opts = list(...), .run = TRUE)
{
   if(!file.exists(file))
     stop("no such file ", file)

  if(missing(target) && !missing(out))
    target = getExtension(out)

  file = path.expand(file)

  if(!is(.opts, "AsIs")) {
     if(length(names(.opts))) {
        i = names(.opts) != ""
        w = !grepl("^-", names(.opts)[i])

	if(any(w))
          names(.opts)[i[w]] = sprintf("-%s", names(.opts)[i[w]])

        .opts[i] = paste(names(.opts)[i], .opts[i], sep = " ")
     }
  }

  cmd = sprintf("%s -%s %s -o %s %s ",
                 RCUDA:::nvccCmd, target, paste(unlist(.opts), collapse = " "), out, file)

  if(!.run)
     return(cmd)

  err = system(cmd, intern = TRUE)
  if(length(err))
    err
  else
    out
}

swapExtension =
function(file, ext)
{
  gsub("\\.[a-zA-z]{,3}", sprintf(".%s", ext), file)
}

getExtension = 
function(file)
{
  gsub(".*\\.([a-zA-Z]{,3})", "\\1", file)
}
