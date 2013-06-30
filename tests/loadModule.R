library(RCUDA)
f = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")

if(!file.exists(f))
  nvcc(system.file("sampleKernels", "dnormOutput.cu", package = "RCUDA"), "dnormOutput.ptx")

cuGetContext()
m = loadModule(f)
m$dnorm_kernel

N = 1e6L
x = rnorm(N)
z = .gpu(m$dnorm_kernel, x, N, 0, 1, numeric(N), outputs = 5, gridDim = c(512, 32), blockDim = 32)
z = .gpu(m$dnorm_kernel, x, N, 0, 1, ans = numeric(N), outputs = "ans", gridDim = c(512, 32), blockDim = 32)

# For dnorm.ptx
#z = .gpu(m$dnorm_kernel, x, N, 0, 1, gridDim = c(512, 32), blockDim = 32)
