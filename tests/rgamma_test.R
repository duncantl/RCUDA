
# Test:
library(RCUDA)
cuGetContext(TRUE)
n_states <- 1000
rng_seeds <- as.integer(runif(n=n_states,min=1,max=1e7))
threads_per_block <- 512L
blockDim <- c(threads_per_block, 1L, 1L)
grid_d1 <- floor(sqrt(n_states/threads_per_block))
grid_d2 <- ceiling(n_states/(grid_d1*threads_per_block))
gridDim <- c(grid_d1, grid_d2, 1L)
setCuRNGStates(n_states=n_states,rng_seeds=rng_seeds,gridDim=gridDim,blockDim=blockDim)
cu.rgamma(n=10000,shape=10.0,rate=1.0,gridDim=gridDim,blockDim=blockDim)


