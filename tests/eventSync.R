library(RCUDA)

#
# We'll illustrate synchronizing on an event
#
#
f = system.file("sampleKernels", "distance_gputools.ptx", package = "RCUDA")
mod = loadModule(f)
gdist.same = 
function(ptr, dim, ans, mod, blockSize = 32L, .async = FALSE,  ...)
{
   out = .gpu(mod$euclidean_kernel_same,
              ptr, dim[2], dim[1],
              NULL, 0L, 0L, 
              dim[2], ans = ans, dim[1], 2.0,
              outputs = 8L, gridDim = c(dim[1], dim[1]), blockDim = blockSize, .async = .async, ...)
    if(.async)
       out
    else
       matrix(out, dim[1], dim[1])
}

N = 25000
p = 200
m = matrix(N*p, N, p)
ptr = copyToDevice(as.numeric(t(m)))
out = cudaMalloc(N*N)

stream = cuStreamCreate(0)
ev1 = cuEventCreate(0)
ev2 = cuEventCreate(0)

cuEventRecord(ev1, stream)
cuEventRecord(ev2, stream)

o = gdist.same(ptr, dim(m), out, mod, .async = TRUE, stream = stream)

# Is the stream finished?
print(cuStreamQuery(stream))

#No need to synchronize on this first event
#  cuEventSynchronize(ev1)

cuEventSynchronize(ev2)

cuEventElapsedTime(ev1, ev2)
