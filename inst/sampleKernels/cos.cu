/* Taken from CUDA_example.cu from Paul Baine's talk on GPUs. 
Originally taken from some other site, I believe.
*/


#define COS_THREAD_CNT 512
#define N 10000000
#define TWO_PI 6.283185

/* --------------------------- target code ------------------------------*/
struct cosParams {
        float *arg;
        float *res;
        int n;
};

extern "C"
__global__ void cos_main(struct cosParams params)
{
        // Computes:
        // res[threadIdx.x + 0*COS_THREAD_CNT] = cos(threadIdx.x + 0*COS_THREAD_CNT)
	// res[threadIdx.x + 1*COS_THREAD_CNT] = cos(threadIdx.x + 1*COS_THREAD_CNT)
        // res[threadIdx.x + 2*COS_THREAD_CNT] = cos(threadIdx.x + 2*COS_THREAD_CNT)
        // ...etc...
	//
	// if COS_THREAD_
	// if COS_THREAD_CNT = 1, this computes all of the cosines in one go,
	// otherwise, it spreads it out across threads...

	int i;
	for (i=threadIdx.x; i<params.n; i+=COS_THREAD_CNT){
		params.res[i] = __cosf(params.arg[i]);
	}
	return;
}

