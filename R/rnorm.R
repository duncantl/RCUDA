original <- FALSE
if (original){

"cu.rnorm" <- function(n,mean,sd,gridDim,blockDim,verbose=FALSE)
{
    if (!exists(".cu_rng_states")){
        stop("RNG's not initialized on device. Please call 'setCuRNGStates' first!")
    }
    if (!exists(".cu_rng_rnorm")){
        if (verbose){
            cat("Loading rnorm kernel...\n")
        }
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("random.ptx",sep=""), package = "RCUDA"))
        .cu_rng_rnorm <<- .cu_rng_module$rnorm_improved_kernel
    }
    # Sort out thread stuff (each thread can generate > 1 variate)
    nthreads <- prod(gridDim)*prod(blockDim) 
    state_len <- as.integer(min(nthreads,length(getCuRNGStates())))
    # Return values:
    x <- vector("numeric",n)
    # Call rgamma on device...
    if (verbose){
        cat("Launching rnorm kernel...\n")
    }
    .cuda(.cu_rng_rnorm, .cu_rng_states, state_len, "x"=x, n, mean, sd, gridDim=gridDim, blockDim=blockDim, outputs="x")
    if (verbose){
        cat("Finished rnorm kernel. First few elements:\n")
        print(head(x))
    }
    return(x)
}

} else { # if...

"cu.rnorm" <- function(n,mean,sd,gridDim,blockDim,verbose=FALSE)
{
    if (!exists(".cu_rng_states")){
        stop("RNG's not initialized on device. Please call 'setCuRNGStates' first!")
    }
    if (!exists(".cu_rng_rnorm")){
        if (verbose){
            cat("Loading rnorm kernel...\n")
        }
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("random.ptx",sep=""), package = "RCUDA"))
        .cu_rng_rnorm <<- .cu_rng_module$rnorm_improved_kernel
    }
    # Sort out thread stuff (each thread can generate > 1 variate)
    nthreads <- prod(gridDim)*prod(blockDim) 
    state_len <- as.integer(min(nthreads,length(getCuRNGStates())))
    # Return values:
    x <- vector("numeric",n)
    if (verbose){
        cat("Allocating memory on device...\n")
    }
    y <- copyToDevice(x)
    # Call rgamma on device...
    if (verbose){
        cat("successful. Launching rnorm kernel...\n")
    }
    .cuda(.cu_rng_rnorm, .cu_rng_states, state_len, y, n, mean, sd, gridDim=gridDim, blockDim=blockDim)
    cudaDeviceSynchronize()
    if (verbose){
        cat("Finished rnorm kernel. Copying from device...\n")
    }
    x <- y[]
    if (verbose){
        cat("Finished copy. First few elements:\n")
        print(head(x))
    }
    cudaDeviceSynchronize()
    return(x)
}

}

