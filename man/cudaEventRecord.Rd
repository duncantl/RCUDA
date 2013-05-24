\name{cudaEventRecord}
\alias{cudaEventRecord}
\title{Records an event}
\description{ Records an event. If \code{stream} is non-zero, the event is recorded after all
 preceding operations in \code{stream} have been completed; otherwise, it is
 recorded after all preceding operations in the CUDA context have been
 completed. Since operation is asynchronous, \code{cudaEventQuery}() and/or
 \code{cudaEventSynchronize}() must be used to determine when the event has actually
 been recorded.}
\usage{cudaEventRecord(event, stream)}
\arguments{
  \item{event}{Event to record}
  \item{stream}{Stream in which to record event}
}

\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventCreateWithFlags}}
\code{\link{cudaEventQuery}}
\code{\link{cudaEventSynchronize}}
\code{\link{cudaEventDestroy}}
\code{\link{cudaEventElapsedTime}}
\code{\link{cudaStreamWaitEvent}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
