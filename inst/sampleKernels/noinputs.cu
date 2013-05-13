extern "C"
__global__ void setValue_kernel()
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
}

