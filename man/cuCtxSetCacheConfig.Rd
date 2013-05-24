\name{cuCtxSetCacheConfig}
\alias{cuCtxSetCacheConfig}
\title{Sets the preferred cache configuration for the current context.}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this sets through \code{config} the preferred cache configuration for
 the current context. This is only a preference. The driver will use
 the requested configuration if possible, but it is free to choose a different
 configuration if required to execute the function. Any function preference
 set via \code{cuFuncSetCacheConfig}() will be preferred over this context-wide
 setting. Setting the context-wide cache configuration to
 \code{CU_FUNC_CACHE_PREFER_NONE} will cause subsequent kernel launches to prefer
 to not change the cache configuration unless required to launch the kernel.}
\usage{cuCtxSetCacheConfig(config)}
\arguments{
  \item{config}{Requested cache configuration}
}

\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}
\code{\link{cuFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
