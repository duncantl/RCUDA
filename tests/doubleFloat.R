library(RCUDA)
x = as.numeric(1:10)
a = copyToDevice(x)
stopifnot(is(a, "cudaFloatArray") && a@elSize == 4L)
stopifnot(identical(a[], x))

# explicitly use a double.
b = copyToDevice(x, elType = "double")
stopifnot(is(b, "cudaDoubleArray") && b@elSize == 8L)
stopifnot(identical(b[], x))

f = system.file("sampleKernels", "addOneDouble.ptx", package = "RCUDA")
mod = loadModule(f)

ans = .gpu(mod$addOne, x, length(x), gridDim = 1, blockDim = 32, .numericAsDouble = TRUE)
stopifnot(all(ans - x == 1))


# A kernel that takes a double * and returns a float *, so we have to handle
# these two differently when passing numeric() from R 
# So we use a vector .numericAsDouble
# Note that it is a vector that corresponds to the subset of arguments
# that are vectors with more than one element.
ans = .gpu(mod$addOneFloat, x, length(x), out = numeric(length(x)),  outputs = "out",
            gridDim = 1, blockDim = 32, .numericAsDouble = c(TRUE, FALSE, FALSE))  #!!! Note the third FALSE is for out and the second is for the length(x)
stopifnot(all(ans - x == 1))


options(CUDA.useDouble = TRUE)
ans = .gpu(mod$addOne, x, length(x), gridDim = 1, blockDim = 32)
stopifnot(all(ans - x == 1))





