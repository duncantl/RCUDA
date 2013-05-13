library(RCUDA)
#cuInit()
m = loadModule("inst/sampleKernels/fixedNumSet.ptx")
#m = loadModule("inst/sampleKernels/set.ptx")
k = m[["setValue_kernel"]]
k = m$setValue_kernel

N = 1e6L
x = integer(N)

mem = cudaMalloc(N)
copyToDevice(integer(N), mem)
# or simply
mem = copyToDevice(x)

#copyToDevice(numeric(N), mem)
#ans = .cuda(k, mem, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(1L, 1L, 1L))

i = copyFromDevice(mem, N, "integer")

#ans = .cuda(k, x, N, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(32L, 1L, 1L))


