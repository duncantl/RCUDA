\name{cuCtxGetCurrent}
\alias{cuCtxGetCurrent}
\title{Returns the CUDA context bound to the calling CPU thread.}
\description{ Returns  the CUDA context bound to the calling CPU thread.
 If no context is bound to the calling CPU thread then \code{*pctx} is
 set to NULL and \code{CUDA_SUCCESS} is returned.}
\usage{cuCtxGetCurrent()}

\value{pctx}
\seealso{\code{\link{cuCtxSetCurrent}}
\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
