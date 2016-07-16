# Check 
library(RCUDA)
v = as(2L, "CUresult")
stopifnot(!is.na(names(v)))
