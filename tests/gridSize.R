library(RCUDA)
f = system.file("sampleKernels", "dnorm.ptx", package = "RCUDA")
mod = loadModule(f)

N = 1e6L
x = rnorm(N)

g = function( N = 1e6L, x = rnorm(N)) 
  .gpu(mod$dnorm_kernel, x, N, 0, 1, gridBy = list(x))

h = function( N = 1e6L, x = rnorm(N)) 
  .gpu(mod$dnorm_kernel, x, N, 0, 1, gridBy = x)


ans = g(N, x)

stopifnot(any(abs(dnorm(x) - ans) > 1e-8))
stopifnot(any(abs(dnorm(x) - h(N, x)) > 1e-8))

