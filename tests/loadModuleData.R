library(RCUDA)
f = system.file("sampleKernels", "dnorm.ptx", package = "RCUDA")

data = readBin(f, raw(), file.info(f)[1, "size"])

cuGetContext()

m = cuModuleLoadDataEx(data)
m$dnorm_kernel

N = 1e6L
z = .gpu(m$dnorm_kernel, rnorm(N), N, 0, 1, outputs = 1L,
             gridDim = c(512, 32), blockDim = 32)

