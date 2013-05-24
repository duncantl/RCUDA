\name{cudaStreamAddCallback}
\alias{cudaStreamAddCallback}
\title{Add a callback to a compute stream}
\description{ Adds a callback to be called on the host after all currently enqueued
 items in the stream have completed.  For each 
 cudaStreamAddCallback call, a callback will be executed exactly once.
 The callback will block later work in the stream until it is finished.}
\usage{cudaStreamAddCallback(stream, callback, userData, flags)}
\arguments{
  \item{stream}{Stream to add callback to}
  \item{callback}{The function to call once preceding stream operations are complete}
  \item{userData}{User specified data to be passed to the callback function}
  \item{flags}{Reserved for future use, must be 0}
}

\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamCreateWithFlags}}
\code{\link{cudaStreamQuery}}
\code{\link{cudaStreamSynchronize}}
\code{\link{cudaStreamWaitEvent}}
\code{\link{cudaStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
