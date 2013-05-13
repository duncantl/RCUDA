library(RCUDA)
m = loadModule("inst/sampleKernels/set.ptx")
k = m$setValue_kernel

N = 1e6L
i = integer(N)
ci = copyToDevice(i)

.cuda(k, ci, N, gridDim = c(64L, 32L, 1L), blockDim = c(512L, 1L, 1L))

i = ci[]
head(i)
done = i[i != 0]
length(done) + 1L
table(diff(done))






