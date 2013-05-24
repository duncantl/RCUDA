\name{cuCtxCreate}
\alias{cuCtxCreate}
\title{Create a CUDA context}
\description{ Creates a new CUDA context and associates it with the calling thread. The
 \code{flags} parameter is described below. The context is created with a usage
 count of 1 and the caller of \code{cuCtxCreate}() must call \code{cuCtxDestroy}() or
 when done using the context. If a context is already current to the thread, 
 it is supplanted by the newly created context and may be restored by a subsequent 
 call to \code{cuCtxPopCurrent}().}
\usage{cuCtxCreate(flags, dev)}
\arguments{
  \item{flags}{Context creation flags}
  \item{dev}{Device to create context on}
}
\value{pctx}
\seealso{\code{\link{cuCtxDestroy}}
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
