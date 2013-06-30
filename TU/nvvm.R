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
  if(getName(fun) %in% c("nvvmGetProgramLog", "nvvmGetCompiledResult"))
    return(NULL)
  
  params = getInOutParameters(fun)
  cuda.createNativeProxy(fun, ..., returnArg = which(params == "out"),
                          returnsString = getName(fun) %in% c("nvvmGetProgramLog", "nvvmGetCompiledResult"))
}

nvvm.createRProxy =
  #
  # determine the out parameters from the comment
  #
function(fun, ...)
{
  if(getName(fun) %in% c("nvvmGetProgramLog", "nvvmGetCompiledResult"))
    return(NULL)
  
  params = getInOutParameters(fun)
  cuda.createRProxy(fun, uncapitalize(gsub("^nvvm", "", getName(fun))), ..., returnArg = which(params == "out"),
                    errorClass = "nvvmResult",                         
                    returnsString = getName(fun) %in% c("nvvmGetProgramLog", "nvvmGetCompiledResult"))
}

checkStatusCode =
  c("if(ans)",
      "   return(R_nvvmErrorInfo(ans));")

uncapitalize =
function(x)
{
  paste(tolower(substring(x, 1, 1)), substring(x, 2), sep = "")
}
