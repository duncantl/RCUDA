\name{cuCtxDestroy}
\alias{cuCtxDestroy}
\title{Destroy a CUDA context}
\description{ Destroys the CUDA context specified by \code{ctx}.  The context \code{ctx} will be
 destroyed regardless of how many threads it is current to.
 It is the responsibility of the calling function to ensure that no API
 call issues using \code{ctx} while \code{cuCtxDestroy}() is executing.}
\usage{cuCtxDestroy(ctx)}
\arguments{
  \item{ctx}{Context to destroy}
}

\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
