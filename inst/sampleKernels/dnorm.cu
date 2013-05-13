extern "C"
__global__ void dnorm_kernel(float *vals, int N, float mu, float sigma)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if(idx < N) {
            float std = (vals[idx] - mu)/sigma;
	    float e = exp( - 0.5 * std * std);
	    vals[idx] = e / ( sigma * sqrt(2 * 3.141592653589793));
	}
}
