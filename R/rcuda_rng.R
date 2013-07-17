
#
# Global variables:
#
# .cu_rng_states :: CUDA RNG states (device memory)
# .cu_rng_setup  :: CUDA kernel for initializing the RNG's
#
#

"setCuRNGStates" <- function(n_states,rng_seeds,gridDim,blockDim)
{
    # Need to setup RNG (this doesn't work automatically
    # yet since
    # getElementSize() isn't defined for curandState...
    # In the meantime, on my Mac: 
    # sizeof(curandState) = 48
    if (!is.numeric(n_states)|| length(n_states)!=1 || (n_states<1)){
        stop("'n_states' must be a positive integer in 'setCuRNGStates'")
    }
    n_states <- as.integer(n_states)
    if (length(rng_seeds)!=n_states){
        stop("'rng_seeds' must be of length 'n_states' in 'setCuRNGStates'")
    }
    # Check grid/block spec is large enough:
    n_threads <- prod(gridDim)*prod(blockDim) 
    if (n_threads < n_states){
        stop("Specified 'gridDims' and 'blockDims' are insufficient to initialize all RNG states")
    }
    # Check if this is first call:
    if (!exists(".cu_rng_setup")){
        # Yes it is, load the module:
        .cu_rng_module <- loadModule(system.file("sampleKernels", paste("rcuda_rng.ptx",sep=""), package = "RCUDA"))
        .cu_rng_setup <<- .cu_rng_module$setup_kernel
    }
    # Allocate space for RNG's on device:
    .cu_rng_states <<- cudaMalloc(elType = "curandState", numEls=n_states, sizeof=48L) 
    # Setup the RNG's using the seeds (.cu_rng_states is initialized in place):
    .cuda(.cu_rng_setup, .cu_rng_states, rng_seeds, n_states, gridDim=gridDim, blockDim=blockDim, outputs=NULL)
    return()
}

# could be expanded...
"summarizeCuRNGStates" <- function()
{
    if (!exists(".cu_rng_states")){
        cat("CUDA RNG states not found\n")
    } else {
        cat("CUDA RNG states found:\n")
        cat("Length = ",length(.cu_rng_states),"\n",sep="")
    }
    return()
}

# could be expanded...
"getCuRNGStates" <- function()
{
    if (!exists(".cu_rng_states")){
        return(NULL)
    } else {
        return(.cu_rng_states)
    }
}

