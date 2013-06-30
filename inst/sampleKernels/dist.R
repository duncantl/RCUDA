# This is very simple with a small number of
# observations and hence threads

library(RCUDA)
mod = loadModule("dist.ptx")

na = 7L
nb = 5L
k = 40L

A = matrix(runif(na * k), na, k)
B = matrix(runif(nb * k), nb, k)

gdist = function(A, B, kernel = mod$euclideanDistance, grid = c(1,1,1), block = c(na, nb)) {
      z = .gpu(mod$euclideanDistance, A, nrow(A), B, nrow(B), ncol(A), ans = numeric(nrow(A) * nrow(B)),
                 gridDim = grid, blockDim = block,  outputs = "ans")
      ans = matrix(z, na, nb)
}

rdist = function(A, B)
           as.matrix(dist(rbind(A, B)))[1:na, -(1:na)]

ans = gdist(A, B)
D = rdist(A, B)
ans - D


