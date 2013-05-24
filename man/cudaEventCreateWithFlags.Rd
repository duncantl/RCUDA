\name{cudaEventCreateWithFlags}
\alias{cudaEventCreateWithFlags}
\title{Creates an event object with the specified flags}
\description{ Creates an event object with the specified flags. Valid flags include:
 - \code{cudaEventDefault}: Default event creation flag.
 - \code{cudaEventBlockingSync}: Specifies that event should use blocking
   synchronization. A host thread that uses \code{cudaEventSynchronize}() to wait
   on an event created with this flag will block until the event actually
   completes.
 - \code{cudaEventDisableTiming}: Specifies that the created event does not need
   to record timing data.  Events created with this flag specified and
   the \code{cudaEventBlockingSync} flag not specified will provide the best
   performance when used with \code{cudaStreamWaitEvent}() and \code{cudaEventQuery}().
 - \code{cudaEventInterprocess}: Specifies that the created event may be used as an
   interprocess event by \code{cudaIpcGetEventHandle}(). \code{cudaEventInterprocess} must
   be specified along with \code{cudaEventDisableTiming}.}
\usage{cudaEventCreateWithFlags(flags)}
\arguments{
  \item{flags}{Flags for new event}
}
\value{event}
\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventSynchronize}}
\code{\link{cudaEventDestroy}}
\code{\link{cudaEventElapsedTime}}
\code{\link{cudaStreamWaitEvent}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
