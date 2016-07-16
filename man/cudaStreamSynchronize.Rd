\name{cudaStreamSynchronize}
\alias{cudaStreamSynchronize}
\title{Waits for stream tasks to complete}
\description{ Blocks until \code{stream} has completed all operations. If the
 \code{cudaDeviceScheduleBlockingSync} flag was set for this device, 
 the host thread will block until the stream is finished with 
 all of its tasks.}
\usage{cudaStreamSynchronize(stream)}
\arguments{
  \item{stream}{Stream identifier}
}

\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamCreateWithFlags}}
\code{\link{cudaStreamQuery}}
\code{\link{cudaStreamWaitEvent}}
\code{\link{cudaStreamAddCallback}}
\code{\link{cudaStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
