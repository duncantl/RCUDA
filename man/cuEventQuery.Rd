\name{cuEventQuery}
\alias{cuEventQuery}
\title{Queries an event's status}
\description{ Query the status of all device work preceding the most recent
 call to \code{cuEventRecord}() (in the appropriate compute streams,
 as specified by the arguments to \code{cuEventRecord}()).}
\usage{cuEventQuery(hEvent)}
\arguments{
  \item{hEvent}{Event to query}
}

\seealso{\code{\link{cuEventCreate}}
\code{\link{cuEventRecord}}
\code{\link{cuEventSynchronize}}
\code{\link{cuEventDestroy}}
\code{\link{cuEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
