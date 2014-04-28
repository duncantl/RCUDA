library(RCUDA)

f = nvcc("~/GitWorkingArea/RCUDA/inst/sampleKernels/double.cu")
mod = loadModule(f)
k = mod$add_kernel

N = 1024L
x = as.numeric(N)
mem = copyToDevice(x, strict = TRUE)
mu = 2.5
ans = copyToDevice(numeric(N), strict = TRUE)
.cuda(k, mem, ans, N, mu, gridBy = N, .numericAsDouble = TRUE)
cu_ret = copyFromDevice(obj = ans, nels = ans@nels, type = "double")


N = 1024L
x = as.numeric(N)
mem = copyToDevice(x, strict = TRUE)
mu = 2.5
.cuda(mod$fadd_kernel, mem, N, mu, gridBy = N, .numericAsDouble = FALSE)
cu_ret = copyFromDevice(obj = mem, nels = mem@nels, type = "double")



N = 1024L
mu = 2.5
.cuda(mod$fadd_kernel, numeric(N), N, mu, gridBy = N, .numericAsDouble = FALSE)


N = 1024L
mu = 2.5
.cuda(mod$dset_kernel, numeric(N), N, mu, gridBy = N, .numericAsDouble = TRUE)

N = 1024L
mu = 2.5
.cuda(mod$dset_both_kernel, numeric(N), N, mu, 10, gridBy = N, .numericAsDouble = c(TRUE, FALSE, TRUE, FALSE))


N = 1024L
mu = 2.5
.cuda(mod$dset_array_kernel, numeric(N), N, c(mu, mu), gridBy = N, .numericAsDouble = TRUE)



x = c(1, 2, 3) + .5
mem = copyToDevice(x, strict = TRUE)
copyFromDevice(obj = mem, nels = mem@nels, type = "double")
mem[]

# mem[1:2] doesn't work mem[1]