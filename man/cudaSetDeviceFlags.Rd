\name{cudaSetDeviceFlags}
\alias{cudaSetDeviceFlags}
\title{Sets flags to be used for device executions}
\description{ Records \code{flags} as the flags to use when initializing the current 
 device.  If no device has been made current to the calling thread
 then \code{flags} will be applied to the initialization of any device
 initialized by the calling host thread, unless that device has had
 its initialization flags set explicitly by this or any host thread.
 
 If the current device has been set and that device has already been 
 initialized then this call will fail with the error 
 \code{cudaErrorSetOnActiveProcess}.  In this case it is necessary 
 to reset \code{device} using \code{cudaDeviceReset}() before the device's
 initialization flags may be set.}
\usage{cudaSetDeviceFlags(flags)}
\arguments{
  \item{flags}{Parameters for device operation}
}

\seealso{\code{cudaGetDeviceCount}
\code{\link{cudaGetDevice}}
\code{cudaGetDeviceProperties}
\code{cudaSetDevice}
\code{\link{cudaSetValidDevices}}
\code{\link{cudaChooseDevice}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
