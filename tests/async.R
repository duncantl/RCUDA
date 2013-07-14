# When working, also examine
# using cudaMallocPitch()
# and passing the two matrices separately to the euclidean_kernel routine 

library(RCUDA)
kfile = system.file("sampleKernels", "distance_gputools.ptx", package = "RCUDA")
if(!file.exists(kfile))
  kfile = nvcc(system.file("sampleKernels", "distance_gputools.cu", package = "RCUDA"), "distance_gputools.ptx")
mod = loadModule(kfile)

N = c(A = 1e4L, B = 4999L)
p = 200L
A = matrix(rnorm(N["A"]*p), N["A"], p)
B = matrix(rnorm(N["B"]*p), N["B"], p)

AB = rbind(A, B)

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

invisible(gdist.same(matrix(rnorm(100), 20, 5), mod))

B = 100
tm.parallel = system.time({
  o = gdist.same(AB, mod, .async = TRUE)
        # do something else here
 replicate(B, prod(rnorm(1e6)))
 cudaDeviceSynchronize()
 distances = matrix(o$ans[], nrow(AB), nrow(AB))
})

tm.serial = system.time({ replicate(B, prod(rnorm(1e6))); gdist.same(AB, mod)})

print(tm.parallel)
print(tm.serial)
