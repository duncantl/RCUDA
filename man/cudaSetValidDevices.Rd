\name{cudaSetValidDevices}
\alias{cudaSetValidDevices}
\title{Set a list of devices that can be used for CUDA}
\description{ Sets a list of devices for CUDA execution in priority order using
 \code{device_arr}. The parameter \code{len} specifies the number of elements in the
 list.  CUDA will try devices from the list sequentially until it finds one
 that works.  If this function is not called, or if it is called with a \code{len}
 of 0, then CUDA will go back to its default behavior of trying devices
 sequentially from a default list containing all of the available CUDA
 devices in the system. If a specified device ID in the list does not exist,
 this function will return \code{cudaErrorInvalidDevice}. If \code{len} is not 0 and
 \code{device_arr} is NULL or if \code{len} exceeds the number of devices in
 the system, then \code{cudaErrorInvalidValue} is returned.}
\usage{cudaSetValidDevices(device_arr, len)}
\arguments{
  \item{device_arr}{List of devices to try}
  \item{len}{Number of devices in specified list}
}

\seealso{\code{cudaGetDeviceCount}
\code{cudaSetDevice}
\code{cudaGetDeviceProperties}
\code{\link{cudaSetDeviceFlags}}
\code{\link{cudaChooseDevice}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
