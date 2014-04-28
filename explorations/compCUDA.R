N = 1e7L
x = rnorm(N)
mu = .5
sigma = 1.1

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
tm1 = replicate(5, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")}))

   # This version by-passes the call to numeric(N) and just allocates space on the GPU, avoiding the 
   # allocation on the host and also the copying of the N values
tm1a = replicate(5, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = "out")}))
   # This next version doesn't retrieve the values in the call to .cuda() but gets them afterwards.
tm1b = replicate(5, system.time({ .cuda(kernel, x, N, mu, sigma, ans <- cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = FALSE); o = ans[]}))
tm1c = replicate(5, system.time({ .cuda(kernel, copyToDevice(x), N, mu, sigma, ans <- cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = FALSE); o = ans[]}))
tm1d = replicate(5, system.time({ .cuda(kernel, copyToDevice(x), N, mu, sigma, cudaAlloc(N, elType = "numeric"), gridBy = N, outputs = 5)}))


tm2 = replicate(5,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, out = FALSE) # this passes an extra argument to the kernel call.
                             vals[]
                           }))

# put the values on the device, allocate the answer and get the results outside of .cuda()
tm2a = replicate(5,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = FALSE)
                             vals[]
                           }))

# get the output vector via .cuda()
tm2b = replicate(5,  system.time({ 
                             cx = copyToDevice(x)
                             vals = cudaAlloc(N, elType = "numeric")
                             vals = .cuda(kernel, cx, N, mu, sigma, vals, gridBy = N, outputs = 5)
                           }))



tm.r = replicate(5, system.time(dnorm(x)))

Rprof("/tmp/cuda.prof")
replicate(5, system.time({ ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N), gridBy = N, outputs = "out")}))
Rprof(NULL)
p = summaryRprof("/tmp/cuda.prof")


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