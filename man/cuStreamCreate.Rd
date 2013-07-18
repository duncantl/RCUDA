\name{cuStreamCreate}
\alias{cuStreamCreate}
\title{Create a stream}
\description{ Creates a stream and returns a handle in \code{phStream}.  The \code{Flags} argument
 determines behaviors of the stream.  Valid values for \code{Flags} are:
 - \code{CU_STREAM_DEFAULT}: Default stream creation flag.
 - \code{CU_STREAM_NON_BLOCKING}: Specifies that work running in the created 
   stream may run concurrently with work in stream 0 (the NULL stream), and that
   the created stream should perform no implicit synchronization with stream 0.}
\usage{cuStreamCreate(Flags)}
\arguments{
  \item{Flags}{Parameters for stream creation}
}
\value{phStream}
\seealso{\code{\link{cuStreamDestroy}}
\code{\link{cuStreamCreateWithPriority}}
\code{\link{cuStreamGetPriority}}
\code{\link{cuStreamGetFlags}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
