library(RCUDA)

# [1] "copyFromDevice"                   "copyToDevice"                     "cuCtxGetDevice"                   "cudaChooseDevice"                 cudaDeviceDisablePeerAccess"      "cudaDeviceEnablePeerAccess"      
# [8] "cudaDeviceGetCacheConfig"         "cudaDeviceGetSharedMemConfig"     "cudaDeviceGetStreamPriorityRange"
# 15] "cudaDeviceSetCacheConfig"         "cudaDeviceSetLimit"               "cudaDeviceSetSharedMemConfig"     "cudaDeviceSynchronize"            "cudaHostGetDevicePointer"        
# 22] "cudaMemcpyDeviceToDevice"         "cudaMemcpyDeviceToHost"           "cudaMemcpyHostToDevice"           "cudaSetDeviceFlags"               "cudaSetDoubleForDevice"           "cudaSetValidDevices"             

# 36] "cuDevicePrimaryCtxGetState"       "cuDevicePrimaryCtxRelease"        "cuDevicePrimaryCtxReset"          "cuDevicePrimaryCtxRetain"         "cuDevicePrimaryCtxSetFlags"    
# 43] "cuMemHostGetDevicePointer"        "getDeviceProperties"              "getDeviceProps"                   

#* cudaDeviceGetAttribute
#* cudaDeviceReset
#* cudaSetValidDevices seg faults and needs a different interface anyway. Do manually.





##########
cudaVersion()
cuDeviceGetCount()
getNumDevices()


cudaSetDevice() # CUresult

dev = cudaGetDevice() # 0
dev = cuDeviceGet(0)
# Should this be -1

cuDeviceGetName(1L)

cuDeviceTotalMem(1L)

getDeviceProperties()


cuDeviceGetPCIBusId(1L)
# [1] "0000:01:00.0"

d2 = cuDeviceGetByPCIBusId("0000:01:00.0")
# -1 again but success.

cudaDeviceCanAccessPeer(0L, 0L)
cuDeviceCanAccessPeer(1L, 1L) # Why 1 and not 0 here?


cuDeviceGetAttributes() # XXX Check correct





# Not supported for 3 and 4 on my macbook pro.
#XXX Use the enums.
ans = sapply(0:4, function(x) try(cudaDeviceGetLimit(x)))



cudaDeviceReset()

cudaDeviceSynchronize()

# 0 and 44 are not valid values
ans = sapply(c(1:43, 45:85), function(i) cudaDeviceGetAttribute(i, 0L))



cudaDeviceEnablePeerAccess(1L, 0) # or 0L, 0

cudaDeviceSetLimit(2L, 1024L)
cudaDeviceSetLimit(cudaLimitMallocHeapSize, 1024L)
cudaDeviceSetLimit("cudaLimitMallocHeapSize", 1024L)

cudaDeviceDisablePeerAccess(1L)

