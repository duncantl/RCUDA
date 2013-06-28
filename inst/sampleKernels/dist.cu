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


