\name{cudaEventQuery}
\alias{cudaEventQuery}
\title{Queries an event's status}
\description{ Query the status of all device work preceding the most recent call to
 \code{cudaEventRecord}() (in the appropriate compute streams, as specified by the
 arguments to \code{cudaEventRecord}()).}
\usage{cudaEventQuery(event)}
\arguments{
  \item{event}{Event to query}
}

\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventCreateWithFlags}}
\code{\link{cudaEventRecord}}
\code{\link{cudaEventSynchronize}}
\code{\link{cudaEventDestroy}}
\code{\link{cudaEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
