\name{cuStreamSynchronize}
\alias{cuStreamSynchronize}
\title{Wait until a stream's tasks are completed}
\description{ Waits until the device has completed all operations in the stream specified
 by \code{hStream}. If the context was created with the 
 \code{CU_CTX_SCHED_BLOCKING_SYNC} flag, the CPU thread will block until the
 stream is finished with all of its tasks.}
\usage{cuStreamSynchronize(hStream)}
\arguments{
  \item{hStream}{Stream to wait for}
}

\seealso{\code{\link{cuStreamCreate}}
\code{\link{cuStreamDestroy}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
