library(RCUDA)
mod = loadModule("distance_gputools.ptx")

if(FALSE) {
 N = c(A = 8L, B = 7L)
 p = 3L
} else {
 N = c(A = 1000L, B = 999L)
 p = 70L
}

if(TRUE) {
 A = matrix(rnorm(N["A"]*p), N["A"], p)
 B = matrix(rnorm(N["B"]*p), N["B"], p)
} else {
 A = matrix(as.numeric(1:(N["A"]*p)), N["A"], p)
 B = matrix(as.numeric(1:(N["B"]*p)), N["B"], p)
}

# Have to figure out whether we should transpose first or not,
# whether the grid should be on the transpose or not.
AB = rbind(A, B)

# probably want mallocPitch( ncol(AB), nrow(AB), "float")
# Then we get the element type so can check later on.
# Can add an argument to

if(FALSE) {
  mem = cudaMallocPitch( ncol(AB) * 4L,  nrow(AB))
  ref = convertToPtr(t(AB), "float")
  cudaMemcpy2D(mem[[1]], mem[[2]], ref, ncol(AB)*4L, ncol(AB)*4L, nrow(AB), RCUDA:::cudaMemcpyHostToDevice)
} else {
  mem = mallocPitch( ncol(AB), nrow(AB), "float")
  mem[] = t(AB)
}

out = .gpu(mod$euclidean_kernel_same,
           mem$devPtr, as.integer(mem$pitch/4), nrow(AB),
           NULL, 0L, 0L,
           ncol(AB), ans = numeric(nrow(AB)^2), nrow(AB), 2.0,
           outputs = "ans", gridDim = c(nrow(AB), nrow(AB)), blockDim = 32L)
d.AB = matrix(out, nrow(AB), nrow(AB))

rd = as.matrix(dist(AB))
print(max(abs(d.AB - rd)))
