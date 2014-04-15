#include<stdio.h>
#include<string.h>
#include<math_constants.h>
//#include<cuseful.h>
//#include <R.h>
#include "hcluster.h"

#define NUM_THREADS 32
#define NUM_BLOCKS 1024

#if 0
// Distance matrix
__device__ float * hcluster_dist_d;

// Number of elements in each cluster
__device__ float * hcluster_count_d;

// Arrays for finding the minimum of each row and column containing the minimum
__device__ float * hcluster_min_val_d;
__device__ size_t * hcluster_min_col_d;

// Arrays telling which cluster merged with which cluster
__device__ int * hcluster_sub_d;
__device__ int * hcluster_sup_d;

// Array of the values merged at
__device__ float * hcluster_merge_val_d;
#endif

__global__ void complete_kernel(float * dist, const size_t pitch_dist, 
	const size_t n, const int * sub, const int * sup, const float * count, 
	const float * val, const size_t iter, const size_t col_offset, 
	const float lambda, const float beta)
{
  const size_t col = col_offset + NUM_THREADS * blockIdx.x + threadIdx.x;

  // If it matters
  if(col < n) {

    int 
		col_winner = sub[iter], row_winner = sup[iter];
    float 
		top_val = dist[col_winner * pitch_dist + col], 
		bot_val = dist[row_winner * pitch_dist + col];

    bot_val = fmaxf(bot_val, top_val);
    if((col == col_winner) || (col == row_winner))
		bot_val = CUDART_INF_F;

    top_val = CUDART_INF_F;

    // Write out
    dist[col_winner * pitch_dist + col] = top_val;
    dist[col * pitch_dist + col_winner] = top_val;
    dist[row_winner * pitch_dist + col] = bot_val;
    dist[col * pitch_dist + row_winner] = bot_val;
  }
}

__global__ void convert_kernel(float * dist, size_t pitch_dist, size_t n)
{
  for(size_t index = threadIdx.x; index < n; index += NUM_THREADS) {
    dist[index * pitch_dist + index] = CUDART_INF_F;
  }
}
