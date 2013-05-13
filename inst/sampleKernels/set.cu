extern "C"
__global__ void setValue_kernel(int *vals, int N)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if(0 && idx < N) 
	    vals[idx] = idx;

}
