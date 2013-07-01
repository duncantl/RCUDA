library(RCUDA)
mod = loadModule("distance_gputools.ptx")


N = c(A = 8000L, B = 3000L)
p = 70L

N = c(A = 5L, B = 7L)
p = 9L

A = matrix(rnorm(N["A"]*p), N["A"], p)
B = matrix(rnorm(N["B"]*p), N["B"], p)

AB = t(rbind(A, B))
kernel = mod$euclidean_kernel_same
ABref = copyToDevice(AB, elType = "float")
ans = cudaMalloc(sum(N)^2, elType = "float")
.gpu(kernel,
     ABref, p, sum(N),
     ABref, p, sum(N),
     p, ans, 2.0,
     outputs = FALSE, gridDim = N, blockDim = 32L)
out = copyFromDevice(ans, sum(N)^2, "float")
d.AB = matrix(out, sum(N), sum(N))


if(FALSE) {
  # Desired way to do this.
AB = t(rbind(A, B))
kernel = mod$euclidean_kernel_same
ABref = copyToDevice(AB, elType = "float")
out = .gpu(kernel,
              ABref, p, sum(N),
              ABref, p, sum(N),
              p, ans = numeric(sum(N)^2), 2.0,
              outputs = "ans", gridDim = N, blockDim = 32L)
d.AB = matrix(out, sum(N), sum(N))
}


if(FALSE) {


  # 10 arguments
  # is the final N["A"] a problem with the code.
k = mod$euclidean_kernel
out = .gpu(k, t(A),  N["A"], p, t(B), N["B"], p, p, ans = numeric(prod(N)), N["A"], 2.0,
               outputs = "ans", gridDim = N, blockDim = 32L)

matrix(out, N["A"], N["B"])
}


