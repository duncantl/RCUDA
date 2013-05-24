# The difference here is that we will repeat the sampling more than once
# in an R loop (e.g. a parametric bootstrap or a simple simulation)
# and we will leave the RNG states allocated on the GPU and also the
# space for the results.

library(RCUDA)
cuGetContext(TRUE)

m = loadModule(system.file("sampleKernels", "random.ptx", package = "RCUDA"))
kernel = m$rnorm_kernel
B = 20 # number of repetitions
N = 250000 # 1e6L fails on my mac... :/
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
cu_ans = .cuda(kernel, rng_states, ans, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims, outputs = 2L)


cu_rnorm_total_time = system.time(
    replicate(B, {
           .cuda(kernel, rng_states, ans, N, mu, sigma, inplace = TRUE, gridDim = grid_dims, blockDim = block_dims, outputs = 2L)
         }))

rnorm_total_time = system.time( replicate(B, r_ans <- rnorm(N, mu, sigma) ))

cu_rnorm_total_time/rnorm_total_time
