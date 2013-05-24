\name{cuEventCreate}
\alias{cuEventCreate}
\title{Creates an event}
\description{ Creates an event *phEvent with the flags specified via \code{Flags}. Valid flags
 include:
 - \code{CU_EVENT_DEFAULT}: Default event creation flag.
 - \code{CU_EVENT_BLOCKING_SYNC}: Specifies that the created event should use blocking
   synchronization.  A CPU thread that uses \code{cuEventSynchronize}() to wait on
   an event created with this flag will block until the event has actually
   been recorded.
 - \code{CU_EVENT_DISABLE_TIMING}: Specifies that the created event does not need
   to record timing data.  Events created with this flag specified and
   the \code{CU_EVENT_BLOCKING_SYNC} flag not specified will provide the best
   performance when used with \code{cuStreamWaitEvent}() and \code{cuEventQuery}().
 - \code{CU_EVENT_INTERPROCESS}: Specifies that the created event may be used as an
   interprocess event by \code{cuIpcGetEventHandle}(). \code{CU_EVENT_INTERPROCESS} must
   be specified along with \code{CU_EVENT_DISABLE_TIMING}.}
\usage{cuEventCreate(Flags)}
\arguments{
  \item{Flags}{Event creation flags}
}
\value{phEvent}
\seealso{\code{\link{cuEventRecord}}
\code{\link{cuEventQuery}}
\code{\link{cuEventSynchronize}}
\code{\link{cuEventDestroy}}
\code{\link{cuEventElapsedTime}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
