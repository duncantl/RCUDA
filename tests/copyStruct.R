library(RCUDA)
cuInit()
if(FALSE) {
#cudaGetDeviceProperties
prop = new_cudaDeviceProp()
ans = cudaGetDeviceProperties(prop, 0L)
ans

ans = cudaGetDeviceProperties(NULL, 0L)
}
