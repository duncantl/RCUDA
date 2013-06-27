__device__ double dnorm(float x, float mu, float sigma)
{
    float std = (x - mu)/sigma;
    float e = exp( - 0.5 * std * std);
    return(e / ( sigma * sqrt(2 * 3.141592653589793)));
}

extern "C"
__global__ void truncNorm(float *out, float *unifVals, int N)
{
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
           /* how big is each block within a grid */
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
            /* get thread within a block */
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;

    int idx = myblock * blocksize + subthread;
    if(idx < N) {
	// 0.3413447460685 is pnorm(1) - pnorm(0), i.e. Pr( 0 <= Z <= 1) for Z ~ N(0, 1)
	out[idx] = unifVals[idx] * dnorm(unifVals[idx], 0, 1)/0.3413447460685;
    }
}



extern "C"
__global__ void log_truncNorm(float *out, float *unifVals, int N)
{
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
           /* how big is each block within a grid */
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
            /* get thread within a block */
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;

    int idx = myblock * blocksize + subthread;
    if(idx < N) {
	// 0.3413447460685 is pnorm(1) - pnorm(0), i.e. Pr( 0 <= Z <= 1) for Z ~ N(0, 1)
	out[idx] = log(unifVals[idx]) * dnorm(unifVals[idx], 0, 1)/0.3413447460685;
    }
}


