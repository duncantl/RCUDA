library(RCUDA)
m = loadModule("inst/sampleKernels/dnorm.ptx")
k = m$dnorm_kernel

N = 1e6L
x = rnorm(N)

mem = copyToDevice(x)
if(FALSE) {
  i = copyFromDevice(mem, N, "numeric")
  head(i)
}


i = copyFromDevice(mem, N, "numeric")
head(i)

# The values will not be the same as if we had computed them in R.
# This is due to the difference in numerical precision with floats
# and with the GPUs themselves.
summary(dnorm(x[1:100], mu, sigma) - i[1:100])






