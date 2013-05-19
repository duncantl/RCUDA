library(RCUDA)

cuDeviceGet(0L)
cuDeviceGetCount()
cuDeviceTotalMem(0L)

cuDeviceGetName(1L)

attribs = unclass(RCUDA:::CUdevice_attributeValues)
sapply(attribs[-length(attribs)], cuDeviceGetAttribute, 0L)

cudaDeviceGetCacheConfig()
cudaDeviceGetSharedMemConfig()

id = cudaDeviceGetPCIBusId(0L)
cudaDeviceGetByPCIBusId(id)

cudaDeviceReset()
cudaDeviceSynchronize()

 # fails on my macbook pro. Too limit is not supported on this architecture 
sapply(RCUDA:::cudaLimitValues, function(limit) try(cudaDeviceGetLimit(limit)))

