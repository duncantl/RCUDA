\name{cuEventDestroy}
\alias{cuEventDestroy}
\title{Destroys an event}
\description{ Destroys the event specified by \code{hEvent}.}
\usage{cuEventDestroy(hEvent)}
\arguments{
  \item{hEvent}{Event to destroy}
}

\seealso{\code{\link{cuEventCreate}}
\code{\link{cuEventRecord}}
\code{\link{cuEventQuery}}
\code{\link{cuEventSynchronize}}
\code{\link{cuEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
