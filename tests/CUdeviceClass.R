library(RCUDA)
if(cuDeviceGetCount() > 0) {
  cuDeviceTotalMem(1)
  cuDeviceTotalMem(1L)
}

