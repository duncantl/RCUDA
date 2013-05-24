\name{cudaDeviceSetCacheConfig}
\alias{cudaDeviceSetCacheConfig}
\title{Sets the preferred cache configuration for the current device.}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this sets through \code{cacheConfig} the preferred cache
 configuration for the current device. This is only a preference. The
 runtime will use the requested configuration if possible, but it is free to
 choose a different configuration if required to execute the function. Any
 function preference set via
 \code{cudaFuncSetCacheConfig}
 or
 \code{cudaFuncSetCacheConfig}
 will be preferred over this device-wide setting. Setting the device-wide
 cache configuration to \code{cudaFuncCachePreferNone} will cause subsequent
 kernel launches to prefer to not change the cache configuration unless
 required to launch the kernel.}
\usage{cudaDeviceSetCacheConfig(cacheConfig)}
\arguments{
  \item{cacheConfig}{Requested cache configuration}
}

\seealso{\code{\link{cudaDeviceGetCacheConfig}}
\code{\link{cudaFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
