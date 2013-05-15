library(RCUDA)
#
# This version doesn't write the result over the inputs.
# Instead it writes to a separate vector.
#
m = loadModule("inst/sampleKernels/dnormOutput.ptx")
k = m$dnorm_kernel


N = 1e6L
mu = 0.3
sigma = 1.5
x = rnorm(N)

   # different ways to get back only the results we want
ans = .cuda(k, x, N, mu, sigma, numeric(N), gridDim = c(64L, 32L), blockDim = 512L, outputs = 5)
vals = .cuda(k, x, N, mu, sigma, numeric(N), gridDim = c(64L, 32L), blockDim = 512L, outputs = c(FALSE, FALSE, FALSE, FALSE, TRUE))
vals = .cuda(k, x, N, mu, sigma, out = numeric(N), gridDim = c(64L, 32L), blockDim = 512L, outputs = "out")

head(vals)

# The values will not be the same as if we had computed them in R.
# This is due to the difference in numerical precision with floats
# and with the GPUs themselves.
summary(dnorm(x[1:100], mu, sigma) - vals[1:100])


# Check the x's weren't touched.
summary(abs(copyFromDevice(cx, 10, "float") - x[1:10]))




