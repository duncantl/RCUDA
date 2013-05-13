library(RCUDA)
m = loadModule("inst/sampleKernels/dnormOutput.ptx")
k = m$dnorm_kernel

N = 1e6L
mu = 0.3
sigma = 1.5
x = rnorm(N)

cx = copyToDevice(x)
out = cudaMalloc(N)
ans = .cuda(k, cx, N, mu, sigma, out, gridDim = c(32L, 2L, 1L), blockDim = c(32L, 1L, 1L))

vals = copyFromDevice(out, N, "float")
head(vals)

# The values will not be the same as if we had computed them in R.
# This is due to the difference in numerical precision with floats
# and with the GPUs themselves.
summary(dnorm(x[1:100], mu, sigma) - vals[1:100])


# Check the x's weren't touched.
summary(abs(copyFromDevice(cx, 10, "float") - x[1:10]))




