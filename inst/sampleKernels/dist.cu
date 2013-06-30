extern "C"
__global__ void euclideanDistance(const float *data_a, int nrow_a, const float *data_b, int nrow_b, int ncol, float *ans)
{
/*
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
*/

    /* This is very simple, limited to 512 pairs of observations in total. */
    int i = threadIdx.x, j = threadIdx.y;

    if(i < nrow_a && j < nrow_b) {
	int off_a = i,
	    off_b = j;
	float sum = 0;
	for(int k = 0; k < ncol ; k++, off_a += nrow_a, off_b+= nrow_b) {
	    float tmp = (data_a[off_a] - data_b[off_b]);
	    sum += tmp * tmp;
	}
	ans[i + j*nrow_a] = sqrt(sum);
    }

}


#if 0
/* Taken from gputools package and adapted very slightly to generalize the NUM_THREADS to make 
   this dynamic via the blockDim.x */

__global__ void euclideanReduceKernel(const float * vg_a, size_t pitch_a, 
	size_t n_a, const float * vg_b, size_t pitch_b, size_t n_b,
	size_t k, float * d, size_t pitch_d, float p)
{
	size_t x = blockIdx.x, y = blockIdx.y;

	size_t numThreadsPerPair = blockDim.x;

	if((x == y) && (x < n_a) && (threadIdx.x == 0))
		d[y * pitch_d + x] = 0.0;
  
	// If all element is to be computed
	if(y < n_a && x < y) {
		__shared__ float temp[numThreadsPerPair];    

		temp[threadIdx.x] = 0.0;
    
		for(size_t offset = threadIdx.x; offset < k; offset += numThreadsPerPair) {
			float t = vg_a[x * pitch_a + offset] - vg_a[y * pitch_a + offset];
			temp[threadIdx.x] += (t * t);
		}
    
		// Sync with other threads
		__syncthreads();
    
                // http://http.developer.nvidia.com/GPUGems3/gpugems3_ch39.html
		// This is a cumsum.
		// Vital that __syncthreads is called so all threads
                // update temp[threadIdx.x]
		// Reduce
		for(size_t stride = blockDim.x >> 1; stride > 0; stride >>= 1) {
			if(threadIdx.x < stride)
				temp[threadIdx.x] += temp[threadIdx.x + stride];
			__syncthreads();
		}
	    
		// Write to global memory
		if(threadIdx.x == 0) {
			float s = sqrt(temp[0]);
			d[y * pitch_d + x] = s;
			d[x * pitch_d + y] = s;
		}
	}
}
#endif
