library(RCUDA)

# This overwrites the input values so is intended to process
# the data once and no second passes.

m = loadModule("inst/sampleKernels/dnorm.ptx")
k = m$dnorm_kernel

N = 1e6L
x = rnorm(N)
mu = 0
sigma = 1

cx = copyToDevice(x)
.cuda(k, cx, N, mu, sigma, gridDim = c(64L, 32L), blockDim = 512L)
i = cx[]

cu.tm = system.time(replicate(10, {
cx = copyToDevice(x)
.cuda(k, cx, N, mu, sigma, gridDim = c(64L, 32L), blockDim = 512L)
i = cx[]
}))

r.tm = system.time(replicate(10, dnorm(x, mu, sigma)))

cu.tm/r.tm


head(i)

# The values will not be the same as if we had computed them in R.
# This is due to the difference in numerical precision with floats
# and with the GPUs themselves.
summary(dnorm(x[1:100], mu, sigma) - i[1:100])






