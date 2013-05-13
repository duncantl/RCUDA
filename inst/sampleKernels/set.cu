extern "C"
__global__ void setValue_kernel(int *vals, int N)
{
       // Taken from
       //geco.mines.edu/workshop/aug2010/slides/fri/cuda1.pd
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
           /* how big is each block within a grid */
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
            /* get thread within a block */
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
            /* find my thread */
    int idx = myblock*blocksize+subthread;

//	int idx = gridIdx.x * gridDim.x + blockIdx.x * blockDim.x + threadIdx.x;
	if(idx < N) 
	    vals[idx] = idx;

}
