extern "C"
__global__ void setValue_kernel(int *vals)
{
	int N = 1e6;
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
//	if(idx < N)
	   vals[0] = 1;
}
