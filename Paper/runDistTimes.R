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
function(AB, mod, blockSize = 32L, ...)
{
   out = .gpu(mod$euclidean_kernel_same,
              t(AB), ncol(AB), nrow(AB),
              NULL, 0L, 0L, 
              ncol(AB), ans = numeric(nrow(AB)^2), nrow(AB), 2.0,
              outputs = 8L, gridDim = c(nrow(AB), nrow(AB)), blockDim = blockSize, ...)
       matrix(out, nrow(AB), nrow(AB))
}

invisible(gdist.same(matrix(rnorm(100), 20, 5), mod))


AB = rbind(A, B)
gtm.same = system.time(d.AB <- gdist.same(AB, mod))
rtm.same = system.time({rd.AB = as.matrix(dist(AB))})
print(max(abs(d.AB - rd.AB)))

# 35 x slower in R.
# With 5999x200 matrix (i.e. N[1] = 1e3), R version is 21 times slower.

if(require(gputools)) {
gpuDist =
# 
#  simplified version of gpuDist in gputools to make comparison with gdist.same 
#  fair.
function (points, method = "euclidean", p = 2) 
{
    method <- 1L
    points <- as.matrix(points)
    numPoints <- nrow(points)
    a <- .C("Rdistances", as.single(t(points)), as.integer(numPoints), 
        as.integer(ncol(points)), d = single(numPoints * numPoints), 
        "euclidean", as.single(p), PACKAGE = "gputools")
    matrix(a$d, numPoints, numPoints)
}

invisible(gpuDist(matrix(rnorm(100), 20, 5)))
tm.gputools = system.time({tmp = gpuDist(AB)})
print(max(abs(d.AB - tmp)))

# If we use gpuDist() from gputools directly it is 3 times slower!!!
# A big part of this is the coercion to a matrix.
# If we don't coerce the result back to a matrix, this
# takes half the time.
# 14.4 seconds
# as.matrix() takes 10.1 seconds. And it is already done
# in gpuDist() so double counting.

p = profileCUDA(gdist.same(AB, mod, .async = TRUE))
pg = profileCUDA(gpuDist(AB))
prof = rbind(pg, p)
prof$approach = rep(c("RCUDA", "gputools"), c(nrow(p), nrow(pg)))

}

if(TRUE) {
# This works again!
# This is the version that uses the two input kernel
# and avoids stacking the  matrices in R.
k = mod$euclidean_kernel
gdist = function(A, B) { 
    out = .gpu(k, t(A), ncol(A), nrow(A), 
                  t(B), ncol(A), nrow(B), 
                  ncol(A), ans = numeric(nrow(A)*nrow(B)), nrow(A), 2.0,
                  outputs = "ans", gridDim = c(nrow(A), nrow(B)), blockDim = 32L)
     DD = matrix(out, nrow(A), nrow(B))
}

X = matrix(rnorm(100*20), 100, 20)
Y = matrix(rnorm(100*20), 100, 20)
ans <- gdist(X, Y, mod)
stopifnot(max(abs(ans - as.matrix(dist(rbind(X, Y)))[1:nrow(X), -(1:nrow(X))])) < 1e-5)

tm.twomatrices = system.time({DD = gdist(A, B)})

#
#  Basic result:  
#  gtm.same/tm.twomatrices
#                            c(6.630,  1.257,   7.898)/c( 2.132 ,  0.486 ,  2.619 )
#  3.109756 2.586420 3.015655

p1 = profileCUDA(gdist(A, B))
p2 = profileCUDA(gdist.same(AB, mod))
p = rbind(p1, p2)
p$approach = rep(c("twoMatrices", "stacked"), c(nrow(p1), nrow(p2)))

#print(max(abs(DD - as.matrix(dist(AB))[1:nrow(A), - (1:nrow(A))])))
}




if(FALSE) {
# See how the time varies with changing values of n.
ns = c(1e2, 1e3, 1e4, 1e5)
p = 200
N2 = 1e3
B = matrix(rnorm(N2*p), N2, p)
n.times = sapply(ns,
        function(n) {
          print(n)
          x = matrix(rnorm(n*p), n, p)
          x = rbind(x, B)
          system.time(gdist.same(x, mod))
         })
}