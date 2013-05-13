library(RCUDA)
ctx = createContext(0L)
m = loadModule("inst/sampleKernels/dnorm.ptx")
k = m[["dnorm_kernel"]]

N = 1e6
x = rnorm(N)

ans = .cuda(k, x, N, mu = 0, sigma = 0, inplace = TRUE, gridDim = c(1L, 1L, 1L), blockDim = c(1L, 1L, 1L))


max(ans - dnorm(x))

