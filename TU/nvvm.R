library(RCIndex)

tu = createTU("/usr/local/cuda/nvvm/include/nvvm.h")

r = getRoutines(tu)
ds = getDataStructures(tu)

nds = ds[grepl("nvvm.h", sapply(ds, function(x) getFileName(x$def)))]

e = getEnums(tu)

lapply(r, cuda.createNativeProxy)

#
#
#
# Problems with:
#  DestroyProgram
# CompileProgram & VerifyProgram  (options not an argument)
#  GetCompiledResult & GetProgramLog - don't pass buffer.
#  
#
# Can determine the in out parameters from the text

getInOutParameters =
function(fun)
{
  txt = getRawCommentText(fun)
  ll = strsplit(txt, "\\n")[[1]]
  p = grep("\\param", ll, value = TRUE)
  style = gsub(".*\\[(in|out)].*", "\\1", p)
  name = gsub(".*\\[(in|out)][[:space:]]+([a-zA-Z]+) .*", "\\2", p)
  structure(style, names = name)
}

nvvm.createNativeProxy =
  #
  # determine the out parameters from the comment
  #
function(fun, ...)
{
  cuda.createNativeProxy(fun, ..., returnArg = which(getInOutParameters(fun) == "out"))
}
