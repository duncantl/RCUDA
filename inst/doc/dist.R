library(RCUDA)

mod = loadModule("distance_gputools.ptx")


N = c(A = 8000L, B = 3000L)
p = 70L

N = c(A = 20L, B = 11L)
p = 9L

A = matrix(rnorm(N["A"]*p), N["A"], p)
B = matrix(rnorm(N["B"]*p), N["B"], p)


  # 10 arguments
  # is the final N["A"] a problem with the code.
k = mod$euclidean_kernel
out = .gpu(k, t(A),  N["A"], p, t(B), N["B"], p, p, ans = numeric(prod(N)), N["A"], 2.0,
               outputs = "ans", gridDim = N, blockDim = 32L)

matrix(out, N["A"], N["B"])


AB = t(rbind(A, B))
k = mod$euclidean_kernel_same
out = .gpu(k, AB, sum(N), p,
              AB, sum(N), p,
              p, ans = numeric(sum(N) * sum(N)), sum(N), 2.0,
              outputs = "ans", gridDim = N, blockDim = 32L)
d.AB = matrix(out, N["A"], N["B"])
