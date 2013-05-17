extern "C"
{

#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>
#include <curand_kernel.h>

__global__ void setup_kernel(curandState  *state)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;
    curand_init(9131, idx, 0, &state[idx]);
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


} // END extern 

