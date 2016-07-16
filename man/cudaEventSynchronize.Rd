\name{cudaEventSynchronize}
\alias{cudaEventSynchronize}
\title{Waits for an event to complete}
\description{ Wait until the completion of all device work preceding the most recent
 call to \code{cudaEventRecord}() (in the appropriate compute streams, as specified
 by the arguments to \code{cudaEventRecord}()).}
\usage{cudaEventSynchronize(event)}
\arguments{
  \item{event}{Event to wait for}
}

\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventCreateWithFlags}}
\code{\link{cudaEventRecord}}
\code{\link{cudaEventQuery}}
\code{\link{cudaEventDestroy}}
\code{\link{cudaEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
