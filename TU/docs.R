library(RCIndex)
library(RCUDA)

#source("~/promptFun.R")

source("docFuns.R")
source("getTU.R")

library(tools)
u = undoc("RCUDA", "..")

fnNames = u$"code objects"

i = fnNames %in% names(r)
if(!all(i))
   warning("missing routines  ", paste(fnNames[i], collapse = ", "))

ff = lapply(r[fnNames], function(x) writeRd(makeFunctionDoc(x)))


if(FALSE) {
 allDocs = lapply(r.cu[mem], makeFunctionDoc)
 dd = combineDocs( docs = allDocs, title = "Memory operations")
 others = c('cudaMemcpyDefault', 'cudaMemcpyDeviceToDevice', 'cudaMemcpyDeviceToHost', 'cudaMemcpyHostToDevice', 'cudaMemcpyHostToHost' )
 dd$alias = c(dd$alias, others)
 writeRd(dd, out = "../man/memoryFunctions.Rd")  # force = TRUE
}


# We don't seem to be able to get the documentation for routines that are
# enclosed within an #ifdef even though the parser does get the routines (so not that the #ifdef condition is false).

# r comes from TU/clang.R
if(FALSE) {
 otherFuns = gsub("^\\\\alias\\{|}$", "", grep("^\\\\alias", readLines("../man/otherFuns.Rd-deprecated"), value = TRUE))
 i = (otherFuns %in% names(r))
 if(!all(i)) {
     otherFuns[!i] = tmp = sprintf("%s_v2", otherFuns[!i])
     i[!i] = tmp %in% names(r)
 }
 toDoc = otherFuns[ i ]
   # Check if some already documented
 h = unlist(lapply(sprintf("grep -l '\\alias{%s}' ../man/*.Rd", toDoc), system, intern = TRUE))
 table(h)
 
 docs = lapply( r[toDoc], function(x) writeRd(makeFunctionDoc(x), force = TRUE))
}



# Find the markup directives, e.g. \brief, \b, \ref
if(FALSE) {
  z = sapply(r.cu, function(x) getRawCommentText(x@def))  
  table(grep("^\\\\\\w+$", unlist(strsplit(z, "[[:space:],.]+")), value = TRUE))
}

