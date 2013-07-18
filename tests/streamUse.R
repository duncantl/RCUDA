library(RCUDA)
kfile = system.file("sampleKernels", "distance_gputools.ptx", package = "RCUDA")
if(!file.exists(kfile))
   kfile = nvcc(system.file("sampleKernels", "distance_gputools.cu", package = "RCUDA"), "distance_gputools.ptx")
mod = loadModule(kfile)


N = 1e4
p = 200L
AB = matrix(rnorm(N*p), N, p)

gdist.same = 
function(AB, mod, blockSize = 32L, .async = FALSE, ...)
{
   out = .gpu(mod$euclidean_kernel_same,
              t(AB), ncol(AB), nrow(AB),
              NULL, 0L, 0L, 
              ncol(AB), ans = numeric(nrow(AB)^2), nrow(AB), 2.0,
              outputs = 8L, gridDim = c(nrow(AB), nrow(AB)), blockDim = blockSize, .async = .async, ...)
    if(!.async)
       matrix(out, nrow(AB), nrow(AB))
    else
       out
}

if(FALSE) {
stream = cuStreamCreateWithPriority(0, -1)
o = gdist.same(AB, mod, .async = TRUE, stream = stream)
# The next two calls should return NOT_READY
print(cuStreamQuery(stream))
print(cuStreamQuery(stream))
 # Then we just wait
cudaStreamSynchronize(stream)
 # Get the answer
(o$ans[])[1:10]
cuStreamDestroy(stream)
}
