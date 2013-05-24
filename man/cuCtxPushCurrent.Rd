\name{cuCtxPushCurrent}
\alias{cuCtxPushCurrent}
\title{Pushes a context on the current CPU thread}
\description{ Pushes the given context \code{ctx} onto the CPU thread's stack of current
 contexts. The specified context becomes the CPU thread's current context, so
 all CUDA functions that operate on the current context are affected.}
\usage{cuCtxPushCurrent(ctx)}
\arguments{
  \item{ctx}{Context to push}
}

\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
