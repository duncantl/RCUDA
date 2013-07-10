# When working, also examine
# using cudaMallocPitch()
# and passing the two matrices separately to the euclidean_kernel routine 

library(RCUDA)
mod = loadModule("distance_gputools.ptx")

N = c(A = 1e4L, B = 4999L)
p = 200L
A = matrix(rnorm(N["A"]*p), N["A"], p)
B = matrix(rnorm(N["B"]*p), N["B"], p)


gdist.same = 
function(AB, mod, blockSize = 32L)
{
   out = .gpu(mod$euclidean_kernel_same,
              t(AB), ncol(AB), nrow(AB),
              NULL, 0L, 0L, 
              ncol(AB), ans = numeric(nrow(AB)^2), nrow(AB), 2.0,
              outputs = 8L, gridDim = c(nrow(AB), nrow(AB)), blockDim = blockSize)
    matrix(out, nrow(AB), nrow(AB))
}

invisible(gdist.same(matrix(rnorm(100), 20, 5), mod))


AB = rbind(A, B)
gtm.same = system.time(d.AB <- gdist.same(AB, mod))
rtm.same = system.time({rd.AB = as.matrix(dist(AB))})
print(max(abs(d.AB - as.matrix(rd.AB))))



if(FALSE) {
# This is the version that uses the two input kernel
# and avoids stacking the  matrices in R.

gdist =
function(A, B, mod, blockSize = 32L)
{
  out = .gpu(mod$euclidean_kernel,
              t(A), p, nrow(A), 
              t(B), p, nrow(B),
              p, ans = numeric(nrow(A) * nrow(B)), nrow(A), 2.0,
              outputs = 8L, gridDim = c(nrow(A), nrow(B)), blockDim = blockSize)

  matrix(out, nrow(A), nrow(B))
}

X = matrix(rnorm(100*20), 100, 20)
Y = matrix(rnorm(100*20), 100, 20)
ans <- gdist(X, Y, mod)
print(max(abs(ans - as.matrix(dist(rbind(X, Y)))[1:nrow(X), -(1:nrow(X))])))

gtm = system.time({DD = gdist(A, B,  mod)})
#print(max(abs(DD - as.matrix(dist(AB))[1:nrow(A), - (1:nrow(A))])))
#rtm = system.time({r.dAB = as.matrix(dist(rbind(A, B)))})
}



