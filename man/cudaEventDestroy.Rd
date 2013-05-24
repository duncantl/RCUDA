\name{cudaEventDestroy}
\alias{cudaEventDestroy}
\title{Destroys an event object}
\description{ Destroys the event specified by \code{event}.}
\usage{cudaEventDestroy(event)}
\arguments{
  \item{event}{Event to destroy}
}

\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventCreateWithFlags}}
\code{\link{cudaEventQuery}}
\code{\link{cudaEventSynchronize}}
\code{\link{cudaEventRecord}}
\code{\link{cudaEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
