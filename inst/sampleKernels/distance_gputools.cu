#define NUM_THREADS 32
#define size_t int

typedef double float;

extern "C"
__global__ void 
euclidean_kernel(const float * vg_a, size_t pitch_a, size_t n_a,
		 const float * vg_b, size_t pitch_b, size_t n_b,
		 size_t k,
		 float * d, size_t pitch_d)
{
  size_t x = blockIdx.x;
  size_t y = blockIdx.y;

  // If an element is to be computed
  if(x < n_a && y < n_b) {

    __shared__ float temp[NUM_THREADS];

    temp[threadIdx.x] = 0.0;
    for(size_t offset = threadIdx.x; offset < k; offset += blockDim.x) {
      float t = vg_a[x * pitch_a + offset] - vg_b[y * pitch_b + offset];
      temp[threadIdx.x] += (t * t);
    }
    
    // Sync with other threads
    __syncthreads();
    
    // Reduce
    for(size_t stride = blockDim.x >> 1; stride > 0; stride >>= 1) {
      if(threadIdx.x < stride) {
	temp[threadIdx.x] += temp[threadIdx.x + stride];
      }
      __syncthreads();
    }
    // Write to global memory
    if(threadIdx.x == 0) {
      d[y * pitch_d + x] = sqrt(temp[0]);
    }
  }
}

extern "C"
__global__ void 
euclidean_kernel_same(const float * vg_a, size_t pitch_a, size_t n_a,
		      const float * vg_b, size_t pitch_b, size_t n_b,
		      size_t k, float * d, size_t pitch_d, float p)
{
	size_t x = blockIdx.x, y = blockIdx.y;

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
    
                // http://http.developer.nvidia.com/GPUGems3/gpugems3_ch39.html
		// Reduce
		// This is a cumsum.
		// Vital that __syncthreads is called so all threads
                // update temp[threadIdx.x]
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




extern "C"
__global__ void minkowski_kernel(const float * vg_a, size_t pitch_a, size_t n_a,
				 const float * vg_b, size_t pitch_b, size_t n_b,
				 size_t k,
				 float * d, size_t pitch_d,
				 float p)
{
	size_t 
		x = blockIdx.x, y = blockIdx.y;

  // If all element is to be computed
  if(x < n_a && y < n_b) {
    __shared__ float temp[NUM_THREADS];

    temp[threadIdx.x] = 0.0;
    for(size_t offset = threadIdx.x; offset < k; offset += blockDim.x) {
      float t = fabsf(vg_a[x * pitch_a + offset] - vg_b[y * pitch_b + offset]);
      temp[threadIdx.x] += __powf(t, p);
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
			float power = 1.f/p;
			d[y * pitch_d + x] = __powf(temp[0], power);
		}
  }
}


extern "C"
__global__ void canberra_kernel(const float * vg_a, size_t pitch_a, size_t n_a,
				const float * vg_b, size_t pitch_b, size_t n_b,
				size_t k,
				float * d, size_t pitch_d,
				float p)
{
  size_t x = blockIdx.x;
  size_t y = blockIdx.y;

  // If all element is to be computed
  if(x < n_a && y < n_b) {
    __shared__ float temp[NUM_THREADS];

    temp[threadIdx.x] = 0.0;
    for(size_t offset = threadIdx.x; offset < k; offset += blockDim.x) {
      float num = abs(vg_a[x * pitch_a + offset] - vg_b[y * pitch_b + offset]);
      float den = abs(vg_a[x * pitch_a + offset] + vg_b[y * pitch_b + offset]);
      if(den != 0.0) {
	temp[threadIdx.x] += num / den;
      }
    }
    
    // Sync with other threads
    __syncthreads();
    
    // Reduce
    for(size_t stride = blockDim.x >> 1; stride > 0; stride >>= 1) {
      if(threadIdx.x < stride) {
	temp[threadIdx.x] += temp[threadIdx.x + stride];
      }
      __syncthreads();
    }
    // Write to global memory
    if(threadIdx.x == 0) {
      d[y * pitch_d + x] = temp[0];
    }
  }
}
