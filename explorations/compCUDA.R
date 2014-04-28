N = 1e7L
x = rnorm(N)
mu = .5
sigma = 1.1

R = 15

library(RCUDA)
ptx = "dnormOutput.ptx"
if(!file.exists(ptx)) {
    ptx = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")
    if(!file.exists(ptx))
        ptx = nvcc(system.file("sampleKernels", "dnormOutput.cu", package = "RCUDA"), "dnormOutput.ptx")
}

m = loadModule(ptx)
kernel = m$dnorm_kernel

# Run the code once to ensure the module is loaded, compiled, etc.
# and check the results are correct.
ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")
cx = copyToDevice(x)
vals = cudaAlloc(N, elType = "numeric")
.cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = FALSE)
vals[]
stopifnot(identical(vals[], ans))


###########
#
tm1 = replicate(R, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")}))

   # This version by-passes the call to numeric(N) and just allocates space on the GPU, avoiding the 
   # allocation on the host and also the copying of the N values
tm1a = replicate(R, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = "out")}))
   # This next version doesn't retrieve the values in the call to .cuda() but gets them afterwards.
tm1b = replicate(R, system.time({ .cuda(kernel, x, N, mu, sigma, ans <- cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = FALSE); o = ans[]}))
   # This version copies the input vector to the GPU explicitly outside of .cuda() and copies the results back outside of .cuda() also.
tm1c = replicate(R, system.time({ .cuda(kernel, copyToDevice(x), N, mu, sigma, ans <- cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = FALSE); o = ans[]}))
   # This copies the input vector explicitly, but gets the output vector via .cuda, but uses the position not the name.
tm1d = replicate(R, system.time({ .cuda(kernel, copyToDevice(x), N, mu, sigma, cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = 5)}))


# Ignore this. Wrong parameter name.
if(FALSE) 
tm2 = replicate(5,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, out = FALSE) # this passes an extra argument to the kernel call.
                             vals[]
                           }))

# put the values on the device, allocate the answer and get the results outside of .cuda()
tm2a = replicate(R,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = FALSE)
                             vals[]
                           }))

# get the output vector via .cuda()
tm2b = replicate(R,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             vals = .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = 5)
                           }))


tm.r = replicate(R, system.time(dnorm(x)))

if(FALSE) {
Rprof("/tmp/cuda.prof")
replicate(5, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")}))
Rprof(NULL)
p = summaryRprof("/tmp/cuda.prof")
}


if(FALSE) {
trace(cudaAlloc)
trace(copyToDevice)
trace(copyFromDevice)
trace(.cuda)
trace(getDeviceProperties)
trace(cuCtxSynchronize)

{ ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")}
{ ans = .cuda(kernel, x, N, mu, sigma, out = cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = "out")}

{ 
  cx = copyToDevice(x)
  vals = cudaAlloc(N, elType = "numeric")
  .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = FALSE)
  invisible(vals[])
}

library(codetools)
}


##################################
library(RCUDA)

ptx = "double.ptx"
if(!file.exists(ptx)) {
    ptx = system.file("sampleKernels", "double.ptx", package = "RCUDA")
    if(!file.exists(ptx))
        ptx = nvcc(system.file("sampleKernels", "double.cu", package = "RCUDA"), "double.ptx")
}
mod = loadModule(ptx)


N = 1e7L
x = rnorm(N)
mu = .5
sigma = 1.1

fkernel = mod$fadd_kernel
dkernel = mod$add_kernel

system.time({a = .cuda(mod$fadd_kernel, x, ans = cudaAlloc(N, elType = "numeric"),  N, mu, outputs = 2L, gridBy = N)})
system.time({dx = copyToDevice(x); a = .cuda(mod$fadd_kernel, dx, ans = cudaAlloc(N, elType = "numeric"),  N, mu, outputs = 2L, gridBy = N)})


system.time({a = .cuda(mod$fadd_kernel, x, ans = cudaAlloc(N, elType = "numeric"),  N, mu, outputs = NULL, gridBy = N)})
system.time({dx = copyToDevice(x); a = .cuda(mod$fadd_kernel, dx, ans = cudaAlloc(N, elType = "numeric"),  N, mu, outputs = NULL, gridBy = N)})
