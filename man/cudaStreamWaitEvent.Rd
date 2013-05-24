\name{cudaStreamWaitEvent}
\alias{cudaStreamWaitEvent}
\title{Make a compute stream wait on an event}
\description{ Makes all future work submitted to \code{stream} wait until \code{event} reports
 completion before beginning execution.  This synchronization will be
 performed efficiently on the device.  The event \code{event} may
 be from a different context than \code{stream}, in which case this function
 will perform cross-device synchronization.}
\usage{cudaStreamWaitEvent(stream, event, flags)}
\arguments{
  \item{stream}{Stream to wait}
  \item{event}{Event to wait on}
  \item{flags}{Parameters for the operation (must be 0)}
}

\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamCreateWithFlags}}
\code{\link{cudaStreamQuery}}
\code{\link{cudaStreamSynchronize}}
\code{\link{cudaStreamAddCallback}}
\code{\link{cudaStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
