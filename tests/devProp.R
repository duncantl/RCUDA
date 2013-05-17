library(RCUDA)
cuInit()

d = getNumDevices()
getDeviceProps()

if(FALSE) {
prop = new_cudaDeviceProp()

ans = cudaGetDeviceProperties(prop, 0L, .copy = FALSE)
p = ans[[2]]
names(p)

p$name # character vector of length 256, not a single string.
p$memPitch

v = as(p, "cudaDeviceProp")

ans = cudaGetDeviceProperties(prop, 0L, .copy = FALSE)

#XXX fails.
ans = cudaGetDeviceProperties(NULL, 0L)
}








