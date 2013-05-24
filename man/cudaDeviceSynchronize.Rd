\name{cudaDeviceSynchronize}
\alias{cudaDeviceSynchronize}
\title{Wait for compute device to finish}
\description{ Blocks until the device has completed all preceding requested tasks.
 \code{cudaDeviceSynchronize}() returns an error if one of the preceding tasks
 has failed. If the \code{cudaDeviceScheduleBlockingSync} flag was set for 
 this device, the host thread will block until the device has finished 
 its work.}
\usage{cudaDeviceSynchronize()}



\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
