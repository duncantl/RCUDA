#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>
#include <curand_kernel.h>

extern "C"
{

__global__ void setup_kernel(curandState  *state, int *seeds, int n)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;
    if (idx < n){
        curand_init(seeds[idx], idx, 0, &state[idx]);
    }
    return;
}

}


