/* Taken from gputools with the purpos of showing how we can .   */

#define NUM_THREADS 32

/* 
  vg_a and vg_b are two matrices.
  n_a, n_b are the number of rows/observations in the respective matrices.
  pitch_a, pitch_b are  the number of bytes (not elements) between observations in a row, i.e. the stride
  k  - number of variables in each observation, i.e. ncol for each of vg_a and vg_b.
  d - the storage for the answers
  pitch_d - the stride for d giving the offset between elements
  p - ignored by this metric.

  The kernel calls are arranged in a grid of n_a x n_b. So the kernel looks at the block indices
  and only bothers to compute the lower diagonal block of the result matrix.
  It checks if we are on the diagonal (x==y) and if we are in the first thread of the block and sets the result to 0.
  If we are not on the diagonal and x < y, 
 */
extern "C"
__global__ void euclidean_kernel_same(const float * vg_a, size_t pitch_a, 
	size_t n_a, const float * vg_b, size_t pitch_b, size_t n_b,
	size_t k, float * d, size_t pitch_d, float p)
{
	size_t 
		x = blockIdx.x, y = blockIdx.y;

	if((x == y) && (x < n_a) && (threadIdx.x == 0))
		d[y * pitch_d + x] = 0.0;
  
	// If all element is to be computed
	if(y < n_a && x < y) {
		__shared__ float temp[NUM_THREADS];    

		temp[threadIdx.x] = 0.0;
    
		for(size_t offset = threadIdx.x; offset < k; offset += NUM_THREADS) {
			float t = vg_a[x * pitch_a + offset] - vg_a[y * pitch_a + offset];
			temp[threadIdx.x] += (t * t);
		}
    
		// Sync with other threads
		__syncthreads();
    
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
