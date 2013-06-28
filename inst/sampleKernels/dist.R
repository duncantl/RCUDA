# This is very simple with a small number of
# observations and hence threads

library(RCUDA)
mod = loadModule("dist.ptx")

na = 7L
nb = 5L
k = 40L

A = matrix(runif(na * k), na, k)
B = matrix(runif(nb * k), nb, k)

z = .gpu(mod$euclideanDistance, A, na, B, nb, k, ans = numeric(na * nb),
          gridDim = c(1,1,1), blockDim = c(na, nb),  outputs = "ans")
ans = matrix(z, na, nb)

D = as.matrix(dist(rbind(A, B)))[1:na, -(1:na)]

ans - D
