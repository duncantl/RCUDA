library(RCUDA)

cuDeviceGet(0L)
cuDeviceGetCount()
cuDeviceTotalMem(0L)

attribs = unclass(RCUDA:::CUdevice_attributeValues)
sapply(attribs[-length(attribs)], cuDeviceGetAttribute, 0L)

