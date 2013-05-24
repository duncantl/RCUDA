\name{cuFuncSetCacheConfig}
\alias{cuFuncSetCacheConfig}
\title{Sets the preferred cache configuration for a device function}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this sets through \code{config} the preferred cache configuration for
 the device function \code{hfunc}. This is only a preference. The driver will use
 the requested configuration if possible, but it is free to choose a different
 configuration if required to execute \code{hfunc}.  Any context-wide preference
 set via \code{cuCtxSetCacheConfig}() will be overridden by this per-function
 setting unless the per-function setting is \code{CU_FUNC_CACHE_PREFER_NONE}. In
 that case, the current context-wide setting will be used.}
\usage{cuFuncSetCacheConfig(hfunc, config)}
\arguments{
  \item{hfunc}{Kernel to configure cache for}
  \item{config}{Requested cache configuration}
}

\seealso{\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuFuncGetAttribute}}
\code{cuLaunchKernel}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
