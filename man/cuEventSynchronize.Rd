\name{cuEventSynchronize}
\alias{cuEventSynchronize}
\title{Waits for an event to complete}
\description{ Wait until the completion of all device work preceding the most recent
 call to \code{cuEventRecord}() (in the appropriate compute streams, as specified
 by the arguments to \code{cuEventRecord}()).}
\usage{cuEventSynchronize(hEvent)}
\arguments{
  \item{hEvent}{Event to wait for}
}

\seealso{\code{\link{cuEventCreate}}
\code{\link{cuEventRecord}}
\code{\link{cuEventQuery}}
\code{\link{cuEventDestroy}}
\code{\link{cuEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
