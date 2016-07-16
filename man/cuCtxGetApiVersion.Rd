\name{cuCtxGetApiVersion}
\alias{cuCtxGetApiVersion}
\title{Gets the context's API version.}
\description{ Returns a version number in \code{version} corresponding to the capabilities of
 the context (e.g. 3010 or 3020), which library developers can use to direct
 callers to a specific API version. If \code{ctx} is NULL, returns the API version
 used to create the currently bound context.}
\usage{cuCtxGetApiVersion(ctx)}
\arguments{
  \item{ctx}{Context to check}
}
\value{version}
\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
