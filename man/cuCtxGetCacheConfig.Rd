\name{cuCtxGetCacheConfig}
\alias{cuCtxGetCacheConfig}
\title{Returns the preferred cache configuration for the current context.}
\description{ On devices where the L1 cache and shared memory use the same hardware
 resources, this function returns through \code{pconfig} the preferred cache configuration
 for the current context. This is only a preference. The driver will use
 the requested configuration if possible, but it is free to choose a different
 configuration if required to execute functions.}
\usage{cuCtxGetCacheConfig()}

\value{pconfig}
\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}
\code{\link{cuFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
