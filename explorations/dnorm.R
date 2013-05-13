library(RCUDA)
m = loadModule("inst/sampleKernels/dnormArgTest.ptx")
k = m$dnorm_kernel

N = 1e6L
x = rnorm(N)

mem = copyToDevice(x)
i = copyFromDevice(mem, N, "numeric")
head(i)

ans = .cuda(k, mem, N, 0.3, 1.5, inplace = TRUE, gridDim = c(32L, 2L, 1L), blockDim = c(32L, 1L, 1L))

i = copyFromDevice(mem, N, "numeric")
head(i)




