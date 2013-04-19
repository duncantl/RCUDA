#include <cuda.h>
#include <Rdefines.h>

SEXP
R_cudaGetDeviceCount()
{
  int num = 0;
  cudaError_t err = cudaGetDeviceCount(&num);
  if(err != cudaSuccess) {
      PROBLEM "%s", cudaGetErrorString(err)
      ERROR;
  }
  return(ScalarString(num));
}
