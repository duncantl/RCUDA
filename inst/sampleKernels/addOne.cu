extern "C"
__global__ void addOne(float *vals, int N, float *out)
{
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;

    int idx = myblock * blocksize + subthread;

    if(idx < N) {
      out[idx] = vals[idx] + 1.0;
    }
}