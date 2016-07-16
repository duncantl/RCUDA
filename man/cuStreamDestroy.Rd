\name{cuStreamDestroy}
\alias{cuStreamDestroy}
\title{Destroys a stream}
\description{ Destroys the stream specified by \code{hStream}.  }
\usage{cuStreamDestroy(hStream)}
\arguments{
  \item{hStream}{Stream to destroy}
}

\seealso{\code{\link{cuStreamCreate}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
