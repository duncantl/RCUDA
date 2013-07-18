\name{cuStreamCreateWithPriority}
\alias{cuStreamCreateWithPriority}
\title{Create a stream with the given priority}
\description{ Creates a stream with the specified priority and returns a handle in \code{phStream}.
 This API alters the scheduler priority of work in the stream. Work in a higher
 priority stream may preempt work already executing in a low priority stream.}
\usage{cuStreamCreateWithPriority(flags, priority)}
\arguments{
  \item{flags}{Flags for stream creation. See \code{cuStreamCreate} for a list of}
  \item{priority}{Stream priority. Lower numbers represent higher priorities.}
}
\value{phStream}
\seealso{\code{\link{cuStreamDestroy}}
\code{\link{cuStreamCreate}}
\code{\link{cuStreamGetPriority}}
\code{cuCtxGetStreamPriorityRange}
\code{\link{cuStreamGetFlags}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
