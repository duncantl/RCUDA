\name{cuCtxSetCurrent}
\alias{cuCtxSetCurrent}
\title{Binds the specified CUDA context to the calling CPU thread}
\description{ Binds the specified CUDA context to the calling CPU thread.
 If \code{ctx} is NULL then the CUDA context previously bound to the
 calling CPU thread is unbound and \code{CUDA_SUCCESS} is returned.}
\usage{cuCtxSetCurrent(ctx)}
\arguments{
  \item{ctx}{Context to bind to the calling CPU thread}
}

\seealso{\code{\link{cuCtxGetCurrent}}
\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
