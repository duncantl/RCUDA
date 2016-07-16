\name{cudaDeviceGetCacheConfig}
\alias{cudaDeviceGetCacheConfig}
\title{Returns the preferred cache configuration for the current device.}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this returns through \code{pCacheConfig} the preferred cache
 configuration for the current device. This is only a preference. The
 runtime will use the requested configuration if possible, but it is free to
 choose a different configuration if required to execute functions.}
\usage{cudaDeviceGetCacheConfig()}

\value{pCacheConfig}
\seealso{\code{\link{cudaDeviceSetCacheConfig}}
\code{\link{cudaFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
