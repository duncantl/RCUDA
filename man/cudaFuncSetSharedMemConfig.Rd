\name{cudaFuncSetSharedMemConfig}
\alias{cudaFuncSetSharedMemConfig}
\title{Sets the shared memory configuration for a device function}
\description{ On devices with configurable shared memory banks, this function will 
 force all subsequent launches of the specified device function to have
 the given shared memory bank size configuration. On any given launch of the
 function, the shared memory configuration of the device will be temporarily
 changed if needed to suit the function's preferred configuration. Changes in
 shared memory configuration between subsequent launches of functions, 
 may introduce a device side synchronization point.}
\usage{cudaFuncSetSharedMemConfig(func, config)}
\arguments{
  \item{func}{Device function symbol}
  \item{config}{Requested shared memory configuration}
}

\seealso{\code{cudaConfigureCall}
\code{\link{cudaDeviceSetSharedMemConfig}}
\code{\link{cudaDeviceGetSharedMemConfig}}
\code{\link{cudaDeviceSetCacheConfig}}
\code{\link{cudaDeviceGetCacheConfig}}
\code{\link{cudaFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
