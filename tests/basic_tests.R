library(RCUDA)

cat("Setting cuGetContext(TRUE)...\n")
cuGetContext(TRUE)
cat("done. Profiling CUDA code...\n")

cat("Loading module...\n")
m = loadModule(system.file("sampleKernels", "dnorm.ptx", package = "RCUDA"))
cat("done. Extracting kernel...\n")
k = m$dnorm_kernel
cat("done. Setting up miscellaneous stuff...\n")
N = 1e6L
x = rnorm(N)
cat("done. Setting mu and sigma...\n")
mu = 0.3
sigma = 1.5

# if...
# N = 1,000,000
# => 1954 blocks of 512 threads will suffice
# => (62 x 32) grid, (512 x 1 x 1) blocks

# Fix block dims:
threads_per_block <- 512L
block_dims <- c(threads_per_block, 1L, 1L)
grid_d1 <- floor(sqrt(N/threads_per_block))
grid_d2 <- ceiling(N/(grid_d1*threads_per_block))
grid_dims <- c(grid_d1, grid_d2, 1L)

cat("Grid size:\n")
print(grid_dims)
cat("Block size:\n")
print(block_dims)

nthreads <- prod(grid_dims)*prod(block_dims) 
cat("Total number of threads to launch = ",nthreads,"\n")
if (nthreads < N){
    stop("Grid is not large enough...!")
}

cat("TODO: Add cudaDeviceSynchronize() to see if initialization is affecting timing...\n")

cat("Running CUDA kernel...\n")
cu_time <- system.time({
    cat("Copying random N(0,1)'s to device...\n")
    mem = copyToDevice(x)
    .cuda(k, mem, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)
    cat("Copying result back from device...\n")
    cu_ret = copyFromDevice(obj=mem,nels=mem@nels,type="float")
})
r_time <- system.time({
    r_ret <- dnorm(x,mean=mu,sd=sigma)
})
cat("done. Finished profile run! :)\n")

# Not the best comparison but a rough real-world comparison:
cat("CUDA time:\n")
print(cu_time)

cat("R time:\n")
print(r_time)

# Differences due to floating point vs. double...
tdiff <- sum(abs(cu_ret - r_ret))
cat("Diff = ",tdiff,"\n")

cat("Differences in first few values...\n")
print(abs(diff(head(cu_ret)-head(r_ret))))

cat("Differences in last few values...\n")
print(abs(diff(tail(cu_ret)-tail(r_ret))))

# TODO: free memory...


