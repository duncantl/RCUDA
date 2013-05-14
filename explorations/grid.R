library(RCUDA)
m = loadModule("inst/sampleKernels/set.ptx")
k = m$setValue_kernel

N = 1e7L
i = integer(N)
ci = copyToDevice(i)

 # To get over N threads, we use 512 within a block for the maximum amount
 # and then  256 x 128 grid.
 # Would we be better off with a different break down of the grid or the block?
system.time(replicate(100, .cuda(k, ci, N, gridDim = c(256L, 128L), blockDim = c(512L))))

system.time(replicate(100, .cuda(k, ci, N, gridDim = c(32768L), blockDim = c(512L))))

system.time(replicate(100, .cuda(k, ci, N, gridDim = c(32768L), blockDim = c(32, 16))))

i = ci[]
head(i)
done = i[i != 0]
length(done) + 1L
table(diff(done))






