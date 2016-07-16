\name{cuEventRecord}
\alias{cuEventRecord}
\title{Records an event}
\description{ Records an event. If \code{hStream} is non-zero, the event is recorded after all
 preceding operations in \code{hStream} have been completed; otherwise, it is
 recorded after all preceding operations in the CUDA context have been
 completed. Since operation is asynchronous, \code{cuEventQuery} and/or
 \code{cuEventSynchronize}() must be used to determine when the event has actually
 been recorded.}
\usage{cuEventRecord(hEvent, hStream)}
\arguments{
  \item{hEvent}{Event to record}
  \item{hStream}{Stream to record event for}
}

\seealso{\code{\link{cuEventCreate}}
\code{\link{cuEventQuery}}
\code{\link{cuEventSynchronize}}
\code{cuStreamWaitEvent}
\code{\link{cuEventDestroy}}
\code{\link{cuEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
