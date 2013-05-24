\name{cudaFuncSetCacheConfig}
\alias{cudaFuncSetCacheConfig}
\title{Sets the preferred cache configuration for a device function}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this sets through \code{cacheConfig} the preferred cache configuration
 for the function specified via \code{func}. This is only a preference. The
 runtime will use the requested configuration if possible, but it is free to
 choose a different configuration if required to execute \code{func}.}
\usage{cudaFuncSetCacheConfig(func, cacheConfig)}
\arguments{
  \item{func}{Device function symbol}
  \item{cacheConfig}{Requested cache configuration}
}

\seealso{\code{cudaConfigureCall}
\code{\link{cudaFuncSetCacheConfig}}
\code{\link{cudaFuncGetAttributes}}
\code{\link{cudaLaunch}}
\code{\link{cudaSetDoubleForDevice}}
\code{\link{cudaSetDoubleForHost}}
\code{cudaSetupArgument}
\code{cudaThreadGetCacheConfig}
\code{cudaThreadSetCacheConfig}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
