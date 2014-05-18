library(RCUDA)
mod = loadModule("addOne.ptx")

N = 1e6L
x = as.numeric(1:N)
ref = copyToDevice(x, elType = "float")
o = .gpu(mod$addOne, x, N, ans = numeric(N), outputs = "ans", gridBy = N)
or = .gpu(mod$addOne, ref, N, ans = numeric(N), outputs = "ans", gridBy = N)

stopifnot(identical(o, x + 1))
stopifnot(identical(or, x + 1))
