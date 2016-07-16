\name{cudaDeviceGetSharedMemConfig}
\alias{cudaDeviceGetSharedMemConfig}
\title{Returns the shared memory configuration for the current device.}
\description{ This function will return in \code{pConfig} the current size of shared memory banks
 on the current device. On devices with configurable shared memory banks, 
 \code{cudaDeviceSetSharedMemConfig} can be used to change this setting, so that all 
 subsequent kernel launches will by default use the new bank size. When 
 \code{cudaDeviceGetSharedMemConfig} is called on devices without configurable shared 
 memory, it will return the fixed bank size of the hardware.}
\usage{cudaDeviceGetSharedMemConfig()}

\value{pConfig}
\seealso{\code{\link{cudaDeviceSetCacheConfig}}
\code{\link{cudaDeviceGetCacheConfig}}
\code{\link{cudaDeviceSetSharedMemConfig}}
\code{\link{cudaFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
