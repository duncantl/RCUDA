library(RCUDA)
ctx = createContext(0L)
m = loadModule("inst/sampleKernels/noinputs.ptx")
k = m[["setValue_kernel"]]

ans = .cuda(k, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(512L, 1L, 1L))
