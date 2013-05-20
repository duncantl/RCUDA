library(RCUDA)

cat("Setting cuGetContext(TRUE)...\n")
cuGetContext(TRUE)
cat("done. Profiling CUDA code...\n")

cat("Loading module...\n")
m = loadModule(system.file("sampleKernels", "random.ptx", package = "RCUDA"))
cat("done. Extracting kernels...\n")
k_setup = m$setup_kernel
k_rnorm = m$runif_kernel
k_runif = m$rnorm_kernel
cat("done. Setting up miscellaneous stuff...\n")
N = 1e6L

# Uniform parameters:
lo <- -1.0
hi <- 1.0

# Normal parameters:
mu <-  0.3
sigma <-  1.5

# Poison parameters:
lambda <- 1.0

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
rng_states <- cudaMalloc(elType = "curandState", numEls=N, sizeof=48L) 
# Still fails:
# Error in sprintf("cuda%sArray", if (elType %in% c("integer", "logical")) "Int" else if (elType %in%  : 
#   ???
# ... since cudaMalloc needs to create instance of class cudaFloatArray or CudaIntArray

# Need to allocate space for results:
cat("done. Allocating space for results...\n")
x_double <- vector("double",N)
x_int    <- vector("int",N)
x_d_mem <- copyToDevice(x_double)
x_i_mem <- copyToDevice(x_int)

##
#
# TODO: 
# -- Check float/double status
##

# Initializing RNG's...
cat("Launching CUDA kernel for RNG setup...\n")
.cuda(k_setup, rng_states, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)

# Call RNGs...
cat("Launching runif CUDA kernel...\n")
.cuda(k_runif, rng_states, x_d_mem, N, lo, hi, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)

cat("Copying result back from device...\n")
cu_runif_x = copyFromDevice(obj=x_d_mem,nels=x_d_mem@nels,type="float")

# Call RNGs...
cat("Launching rnorm CUDA kernel...\n")
.cuda(k_rnorm, rng_states, x_d_mem, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)

cat("Copying result back from device...\n")
cu_rnorm_x = copyFromDevice(obj=x_d_mem,nels=x_d_mem@nels,type="float")

# Call RNGs...
cat("Launching rpois CUDA kernel...\n")
.cuda(k_rpois, rng_states, x_i_mem, N, lambda, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims)

cat("Copying result back from device...\n")
cu_rpois_x = copyFromDevice(obj=x_i_mem,nels=x_i_mem@nels,type="float")









