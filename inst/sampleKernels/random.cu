#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>
#include <curand_kernel.h>
#include "utility.h"

extern "C"
{

__global__ void setup_kernel(curandState  *state)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;
    curand_init(9131 + idx*17, idx, 0, &state[idx]);
    return;
}

__global__ void runif_kernel(curandState *state, float *vals, int n, float lo, float hi)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

    if (idx < n){
        vals[idx] = lo + (hi-lo)*curand_uniform(&state[idx]);
    }
    return;
}

__global__ void rexpo_kernel(curandState *state, float *vals, int n, float lambda)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

    if (idx < n){
        vals[idx] = -log(curand_uniform(&state[idx]))/lambda;
    }
    return;
}

__global__ void rnorm_kernel(curandState *state, float *vals, int n, float mu, float sigma)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

	if (idx < n) {
	    vals[idx] = mu + sigma * curand_normal(&state[idx]);
	}
    return;
}

__global__ void rpois_kernel(curandState *state, int *vals, int n, double lambda)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

	if (idx < n) {
	    vals[idx] = curand_poisson(&state[idx], lambda);
	}
    return;
}

/*
   Few others are available for pseudo-RNGs:

   curand_log_normal
   curand_uniform_double (double precision uniforms)
   curand_normal_double (double precision normals)
   curand_log_normal_double (double precision log-normals)
   curand_normal2 (pair of float normals)
   curand_log_normal2 (pair of float log-normals)
   curand_normal2_double (pair of double precision normals)
   curand_log_normal2_double (pair of double precision log-normals)
*/

__global__ void rnorm_all_in_one_kernel(float *vals, int n, float mu, float sigma)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

    // Setup the RNG:
    curandState rng_state;
    curand_init(9131 + idx*17, 0, 0, &rng_state);

	if (idx < n) {
	    vals[idx] = mu + sigma * curand_normal(&rng_state);
	}
    return;
}

__global__ void rnorm_improved_kernel(curandState *state, int state_len, float *vals, int n, float mu, float sigma)
{
    // 
    // INPUTS
    // ======
    //
    // state        :: RNG states (vector of length state_len)
    //
    // state_len    :: length of rng states (one thread per rng_state)
    //                 if (idx >= state_len){ do nothing... }
    //
    // vals         :: storage for the n samples to be generated
    //
    // n            :: length of vector to sample
    //
    // mu           :: mean
    //
    // sigma        :: standard deviation
    //
    // ===================================================================
    //
    // From these we derive:
    //
    // n_per_thread :: number of rng's to generate per thread
    //                 heurestically, each thread computes
    //                 n_per_thread = n / state_len 
    //                 variates. However, if n_per_thread is
    //                 not an integer, then some do one less,
    //                 some one more.
    //
    // n(idx)       :: number of rng's that thread idx will generate
    //
    // n_lo         :: minimum number of rng's that a (used) thread
    //                 will generate
    //
    // n_hi         :: maximum number of rng's that a (used) thread
    //                 will generate
    //
    // n_extra      :: (= n % state_len) the number of threads that
    //                 will generate n_hi rng's
    //
    // n_regular    :: (= state_len - n_extra) the number of threads that
    //                 will generate n_lo rng's
    // 
    // Note:
    //
    // n = (n_lo * n_regular) + (n_hi * n_extra)
    //
    // e.g.,
    //
    // n = 108, state_len = 40
    // => n_lo = 2, n_hi = 3
    // => n_extra = 28, n_regular = 12
    // => threads  1-28 generate 3 rng's
    // => threads 29-40 generate 2 rngs'
    // 
    // thread idx writes to:
    // 
    // if (idx < n_extra){
    //   // 'extra' thread:
    //   n_hi*idx : ((n_hi*idx) + (n_hi-1))
    // }
    // if (idx >= n_extra){
    //   // 'regular' thread:
    //   (n_hi*n_extra) + (n_lo*(idx-n_extra)):((n_lo*(idx-n_extra)) + (n_lo-1))
    // }
    // 
    // e.g., (cont...)
    //
    // thread  0 writes to: 0,1,2
    // thread  1 writes to: 3,4,5
    // ...
    // thread 27 writes to: 81,82,83
    // thread 28 writes to: 84,85
    // thread 29 writes to: 86,87
    // ...
    // thread 40 writes to: 118,119
    //

    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

	if (idx >= state_len) {
	    return;
	}

    int n_extra, n_lo, n_hi, out_idx_start, n_per_thread;
    compute_tbg_indices(idx,n,state_len,&n_extra,&n_lo,&n_hi,&out_idx_start,&n_per_thread);

    int gen_num;
    for (gen_num=0; gen_num<n_per_thread; gen_num++){
        vals[out_idx_start+gen_num] = mu + sigma * curand_normal(&state[idx]);
    }
    return;
}

} // END extern 

