\name{cudaStreamQuery}
\alias{cudaStreamQuery}
\title{Queries an asynchronous stream for completion status}
\description{ Returns \code{cudaSuccess} if all operations in \code{stream} have
 completed, or \code{cudaErrorNotReady} if not.}
\usage{cudaStreamQuery(stream)}
\arguments{
  \item{stream}{Stream identifier}
}

\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamCreateWithFlags}}
\code{\link{cudaStreamWaitEvent}}
\code{\link{cudaStreamSynchronize}}
\code{\link{cudaStreamAddCallback}}
\code{\link{cudaStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
