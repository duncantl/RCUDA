\name{cudaDeviceSetSharedMemConfig}
\alias{cudaDeviceSetSharedMemConfig}
\title{Sets the shared memory configuration for the current device.}
\description{ On devices with configurable shared memory banks, this function will set
 the shared memory bank size which is used for all subsequent kernel launches.
 Any per-function setting of shared memory set via \code{cudaFuncSetSharedMemConfig}
 will override the device wide setting.}
\usage{cudaDeviceSetSharedMemConfig(config)}
\arguments{
  \item{config}{Requested cache configuration}
}

\seealso{\code{\link{cudaDeviceSetCacheConfig}}
\code{\link{cudaDeviceGetCacheConfig}}
\code{\link{cudaDeviceGetSharedMemConfig}}
\code{\link{cudaFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
