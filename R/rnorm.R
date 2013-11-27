
"cu.rnorm" <- function(n,mean,sd,gridDim,blockDim)
{
    if (!exists(.cu_rng_states)){
        stop("RNG's not initialized on device. Please call 'setCuRNGStates' first!")
    }
    if (!exists(.cu_rng_rnorm)){
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("random.ptx",sep=""), package = "RCUDA"))
        .cu_rng_rnorm <<- .cu_rng_module$rnorm_improved_kernel
    }
    # Sort out thread stuff (each thread can generate > 1 variate)
    nthreads <- prod(grid_dims)*prod(block_dims) 
    state_len <- as.integer(min(nthreads,length(getCuRNGStates())))
    # Return values:
    x <- vector("numeric",n)
    # Call rgamma on device...
    .cuda(.cu_rng_rnorm, .cu_rng_states, state_len, "x"=x, N, mean, sd, gridDim=gridDim, blockDim=blockDim, outputs="x")
    return(x)
}


