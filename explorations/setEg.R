library(RCUDA)
#cuInit()
#.Call("R_cuDeviceGet", 0L)
#.Call("R_cudaSetDevice", 0L)
#ctx = createContext(0L)
m = loadModule("inst/sampleKernels/fixedNumSet.ptx")
#m = loadModule("inst/sampleKernels/set.ptx")
k = m[["setValue_kernel"]]

N = 1e6L
x = integer(N)

mem = cudaMalloc(N)

#ans = .cuda(k, mem, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(32L, 1L, 1L))

i = .Call("R_getCudaIntVector", mem, N)

#ans = .cuda(k, x, N, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(32L, 1L, 1L))


