\name{cudaDeviceReset}
\alias{cudaDeviceReset}
\title{Destroy all allocations and reset all state on the current device}
\description{ Explicitly destroys and cleans up all resources associated with the current
 device in the current process.  Any subsequent API call to this device will 
 reinitialize the device.}
\usage{cudaDeviceReset()}



\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
