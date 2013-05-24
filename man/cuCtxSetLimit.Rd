\name{cuCtxSetLimit}
\alias{cuCtxSetLimit}
\title{Set resource limits}
\description{ Setting \code{limit} to \code{value} is a request by the application to update
 the current limit maintained by the context. The driver is free to
 modify the requested value to meet h/w requirements (this could be
 clamping to minimum or maximum values, rounding up to nearest element
 size, etc). The application can use \code{cuCtxGetLimit}() to find out exactly
 what the limit has been set to.}
\usage{cuCtxSetLimit(limit, value)}
\arguments{
  \item{limit}{Limit to set}
  \item{value}{Size of limit}
}

\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
