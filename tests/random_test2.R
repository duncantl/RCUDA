library(RCUDA)
cuGetContext(TRUE)

m = loadModule(system.file("sampleKernels", "random.ptx", package = "RCUDA"))
kernel = m$rnorm_kernel
N = 250000 # 1e6L fails on my mac... :/   Works for 2500, but not 2500 on a 
mu <-  -0.3
sigma <-  1.5

threads_per_block <- 512L
block_dims <- c(threads_per_block, 1L, 1L)
grid_d1 <- floor(sqrt(N/threads_per_block))
grid_d2 <- ceiling(N/(grid_d1*threads_per_block))
grid_dims <- c(grid_d1, grid_d2, 1L)

# Call this once to force the compilation before we do timings
rng_states <- cudaMalloc(elType = "curandState", numEls=N, sizeof=48L)
ans = numeric(N)
cu_ans = .cuda(kernel, rng_states, ans = ans, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims, outputs = "ans")



cu_rnorm_total_time = system.time({
   rng_states <- cudaMalloc(elType = "curandState", numEls = N, sizeof = 48L)
   ans = numeric(N)
   cu_ans = .cuda(kernel, rng_states, ans = ans, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims, outputs = "ans")
})

if(is(cu_ans, "cudaError_t"))  # length(cu_ans) == 1)
    stop("kernel failed")

rnorm_total_time = system.time( r_ans <- rnorm(N, mu, sigma) )

qqplot(r_ans, cu_ans)

cu_rnorm_total_time/rnorm_total_time
