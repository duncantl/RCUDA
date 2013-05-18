library(RCUDA)

createContext()
m = loadModule("inst/sampleKernels/dnorm.cubin")
vals = RCUDA:::CUfunction_attributeValues
 # ignore the MAX entry 
sapply(unclass(vals)[-length(vals)], cuFuncGetAttribute,  m$dnorm_kernel)

