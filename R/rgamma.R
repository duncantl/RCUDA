
"cu.rgamma" <- function(n,shape,rate=1,scale=1/rate,gridDim,blockDim)
{
    if (!exists(.cu_rng_states)){
        stop("RNG's not initialized on device. Please call 'setCuRNGStates' first!")
    }
    if (!exists(.cu_rng_rgamma)){
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("rgamma.ptx",sep=""), package = "RCUDA"))
        .cu_rng_rgamma <<- .cu_rng_module$rgamma_kernel
    }
    # Sort out thread stuff (each thread can generate > 1 variate)
    nthreads <- prod(grid_dims)*prod(block_dims) 
    state_len <- as.integer(min(nthreads,length(getCuRNGStates())))
    # Return values:
    x <- vector("numeric",n)
    # Call rgamma on device...
    .cuda(.cu_rng_rgamma, .cu_rng_states, state_len, "x"=x, N, shape, scale, gridDim=gridDim, blockDim=blockDim, outputs="x")
    return(x)
}

# Test:
#library(RCUDA)
#cuGetContext(TRUE)
#n_states <- 1000
#rng_seeds <- as.integer(runif(n=n_states,min=1,max=1e7))
#threads_per_block <- 512L
#blockDim <- c(threads_per_block, 1L, 1L)
#grid_d1 <- floor(sqrt(n_states/threads_per_block))
#grid_d2 <- ceiling(n_states/(grid_d1*threads_per_block))
#gridDim <- c(grid_d1, grid_d2, 1L)
#setCuRNGStates(n_states=n_states,rng_seeds=rng_seeds,gridDim=gridDim,blockDim=blockDim)
#cu.rgamma(n=10000,shape=10.0,rate=1.0,gridDim=gridDim,blockDim=blockDim)


