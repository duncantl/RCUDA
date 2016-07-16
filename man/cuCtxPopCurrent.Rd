\name{cuCtxPopCurrent}
\alias{cuCtxPopCurrent}
\title{Pops the current CUDA context from the current CPU thread.}
\description{ Pops the current CUDA context from the CPU thread and passes back the 
 old context handle . That context may then be made current 
 to a different CPU thread by calling \code{cuCtxPushCurrent}().}
\usage{cuCtxPopCurrent()}

\value{pctx}
\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
