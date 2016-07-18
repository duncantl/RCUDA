library(RCIndex)
library(RCodeGen)
source("nativeGen.R")

if(FALSE) {
  options(CodeGenDir = "/tmp/RCUDA")
  dirs = sprintf("%s/%s", options("CodeGenDir"), c("src", "R"))
  sapply(dirs, function(d) if(!dir.exists(d)) dir.create(d, recursive = TRUE))
}


# For the NAMESPACE exports.
exp = list()


#Identify routines that are deprecated

 # add . to pick up our local cuda.h   Make certain to update this when we get a new SDK.
 # copied it here to add const declarations on some parameters.
 # Perhaps could set the const on the CLang objects programmatically.

incs = c(".", "/usr/local/cuda/include")
# when we include curand_kernel.h, clang goes nuts with errors.
# So we up the limit.
tu = createTU("tu.c", includes = incs, args = c("-ferror-limit=10000", "-fparse-all-comments"), verbose = FALSE)

  # Should filter by name here, not below
r = getRoutines(tu, FALSE)
