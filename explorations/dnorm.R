library(RCUDA)
m = loadModule("inst/sampleKernels/dnorm.ptx")
k = m$dnorm_kernel

N = 1e6L
x = rnorm(N)

mem = copyToDevice(x)
i = copyFromDevice(mem, N, "numeric")
head(i)

mu = 0.3
sigma = 1.5

ans = .cuda(k, mem, N, mu, sigma, inplace = TRUE, gridDim = c(32L, 2L, 1L), blockDim = c(32L, 1L, 1L))

i = copyFromDevice(mem, N, "numeric")
head(i)

# The values will not be the same as if we had computed them in R.
# This is due to the difference in numerical precision with floats
# and with the GPUs themselves.
summary(dnorm(x[1:100], mu, sigma) - i[1:100])






