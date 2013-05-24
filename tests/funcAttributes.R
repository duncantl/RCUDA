library(RCUDA)
cuGetContext()

f = system.file("sampleKernels", "dnorm.cubin", package = "RCUDA")
if(file.exists(f)) {
m = loadModule(f)
vals = RCUDA:::CUfunction_attributeValues
 # ignore the MAX entry 
sapply(unclass(vals)[-length(vals)], cuFuncGetAttribute,  m$dnorm_kernel)

cuFuncGetAttributes(m$dnorm_kernel)
}


