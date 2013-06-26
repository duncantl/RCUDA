library(RCUDA)

fix_seed <- TRUE

cat("Setting cuGetContext(TRUE)...\n")
cuGetContext(TRUE)
cat("done. Profiling CUDA code...\n")

cat("Loading module...\n")
m <- loadModule(system.file("sampleKernels", "rgamma.ptx", package = "RCUDA"))
cat("done. Extracting kernels...\n")
k_setup <- m$setup_kernel
k_rgamma <- m$rgamma_kernel

# Constant variables on device required by the rgamma kernel:
# TODO: (just wrap this in a setup function)
if (FALSE){
#cudaMemcpyToSymbol("a1", &a1, sizeof(a1))
#cudaMemcpyToSymbol("a2", &a2, sizeof(a2))
#cudaMemcpyToSymbol("a3", &a3, sizeof(a3))
#cudaMemcpyToSymbol("a4", &a4, sizeof(a4))
#cudaMemcpyToSymbol("a5", &a5, sizeof(a5))
#cudaMemcpyToSymbol("a6", &a6, sizeof(a6))
#cudaMemcpyToSymbol("a7", &a7, sizeof(a7))
#cudaMemcpyToSymbol("q1", &q1, sizeof(q1))
#cudaMemcpyToSymbol("q2", &q2, sizeof(q2))
#cudaMemcpyToSymbol("q3", &q3, sizeof(q3))
#cudaMemcpyToSymbol("q4", &q4, sizeof(q4))
#cudaMemcpyToSymbol("q5", &q5, sizeof(q5))
#cudaMemcpyToSymbol("q6", &q6, sizeof(q6))
#cudaMemcpyToSymbol("q7", &q7, sizeof(q7))
#cudaMemcpyToSymbol("sqrt32", &sqrt32, sizeof(sqrt32))
#cudaMemcpyToSymbol("exp_m1", &exp_m1, sizeof(exp_m1))
}

cat("done. Setting up miscellaneous stuff...\n")
N <- 50000 # 1e6L fails on my mac... :/

# Gamma parameters:
a <- 10.5
b <- 1.0

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

# Need to setup RNG (this doesn't work yet since
# getElementSize() isn't defined for curandState...
# In the meantime, on my Mac: 
# sizeof(curandState) = 48
cat("Allocating memory on device for curandStates...\n")
cu_rng_alloc_time <- system.time({
    rng_states <- cudaMalloc(elType = "curandState", numEls=N, sizeof=48L) 
})

if (fix_seed){
    set.seed(512312)
}
rng_seeds <- as.integer(runif(n=N,min=1,max=10000000))
cu_rng_seeds <- copyToDevice(rng_seeds)

# Need to allocate space for results:
cat("done. Allocating space for results...\n")
x_double <- rep(0.0,N)
x_d_mem <- copyToDevice(x_double) 

# Initializing RNG's...
cat("Launching CUDA kernel for RNG setup...\n")
cu_init_time <- system.time({
    .cuda(k_setup, rng_states, cu_rng_seeds, N, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)
})

# Call RNGs...
cat("Launching rgamma CUDA kernel...\n")
cu_rgamma_time <- system.time({
    .cuda(k_rgamma, rng_states, x_d_mem, N, a, b, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)
})

cat("Copying result back from device...\n")
cu_rgamma_copy_time <- system.time({
    cu_rgamma_x = copyFromDevice(obj=x_d_mem,nels=x_d_mem@nels,type="float")
})

r_rgamma_time <- system.time({
    r_rgamma_x <- rgamma(n=N,a,b)
})

cat("Quantiles for CUDA:\n")
print(quantile(cu_rgamma_x))
cat("Quantiles for R:\n")
print(quantile(r_rgamma_x))

cat("Timings (N=",N,"):\n",sep="")
cat("CUDA init+fluff time = ",(cu_rng_alloc_time+cu_init_time+cu_rgamma_copy_time)[3],"\n",sep="")
cat("CUDA rgamma time     = ",cu_rgamma_time[3],"\n",sep="")
cat("rgamma time          = ",r_rgamma_time[3],"\n",sep="")

