extern "C"
__global__ void dnorm_kernel(float *vals, int N, float mu, float sigma)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if(idx < N) {
	   vals[idx] = sigma;
	}
}
