
"cu.rgamma" <- function(n,shape,rate=1,scale=1/rate,gridDim,blockDim)
{
    if (!exists(".cu_rng_states")){
        stop("RNG's not initialized on device. Please call 'setCuRNGStates' first!")
    }
    if (!exists(".cu_rng_rgamma")){
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("rgamma.ptx",sep=""), package = "RCUDA"))
        .cu_rng_rgamma <<- .cu_rng_module$rgamma_kernel
    }
    # Sort out thread stuff (each thread can generate > 1 variate)
    nthreads <- prod(gridDim)*prod(blockDim) 
    state_len <- as.integer(min(nthreads,length(getCuRNGStates())))
    # Return values:
    x <- vector("numeric",n)
    # Call rgamma on device...
    .cuda(.cu_rng_rgamma, .cu_rng_states, state_len, "x"=x, n, shape, scale, gridDim=gridDim, blockDim=blockDim, outputs="x")
    return(x)
}

