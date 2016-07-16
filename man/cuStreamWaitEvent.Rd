\name{cuStreamWaitEvent}
\alias{cuStreamWaitEvent}
\title{Make a compute stream wait on an event}
\description{ Makes all future work submitted to \code{hStream} wait until \code{hEvent}
 reports completion before beginning execution.  This synchronization
 will be performed efficiently on the device.  The event \code{hEvent} may
 be from a different context than \code{hStream}, in which case this function
 will perform cross-device synchronization.}
\usage{cuStreamWaitEvent(hStream, hEvent, Flags)}
\arguments{
  \item{hStream}{Stream to wait}
  \item{hEvent}{Event to wait on (may not be NULL)}
  \item{Flags}{Parameters for the operation (must be 0)}
}

\seealso{\code{\link{cuStreamCreate}}
\code{\link{cuEventRecord}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamAddCallback}}
\code{\link{cuStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
