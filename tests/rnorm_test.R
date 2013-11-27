
# Test:
library(RCUDA)
verbose <- TRUE
cuGetContext(TRUE)
n <- 1000
n_states <- 5
if (verbose){
    cat(paste0("Running with n=",n,", n_states=",n_states,"\n"))
}
rng_seeds <- as.integer(runif(n=n_states,min=1,max=1e7))
threads_per_block <- 512L
bg <- compute_grid(N=n,threads_per_block=threads_per_block)
if (verbose){
    cat("Setting up CUDA RNG...\n")
}
setCuRNGStates(n_states=n_states,rng_seeds=rng_seeds,gridDim=bg$grid_dims,blockDim=bg$block_dims,verbose=verbose)
if (verbose){
    cat("Running cu.rnorm...\n")
}
x <- cu.rnorm(n=n,mean=10,sd=2,gridDim=bg$grid_dims,blockDim=bg$block_dims,verbose=verbose)
if (verbose){
    cat(paste0("Mean(x) = ",mean(x),"\n")) 
    cat(paste0("  SD(x) = ",sd(x),"\n")) 
}

