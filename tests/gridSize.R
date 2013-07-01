library(RCUDA)
f = system.file("sampleKernels", "dnorm.ptx", package = "RCUDA")
mod = loadModule(f)

N = 1e6L
x = rnorm(N)
ans = .gpu(mod$dnorm_kernel, x, N, 0, 1, gridBy = N)

stopifnot(any(abs(dnorm(x) - ans) > 1e-8))

