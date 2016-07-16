\name{cuStreamAddCallback}
\alias{cuStreamAddCallback}
\title{Add a callback to a compute stream}
\description{ Adds a callback to be called on the host after all currently enqueued
 items in the stream have completed.  For each 
 cuStreamAddCallback call, the callback will be executed exactly once.
 The callback will block later work in the stream until it is finished.}
\usage{cuStreamAddCallback(hStream, callback, userData, flags)}
\arguments{
  \item{hStream}{Stream to add callback to}
  \item{callback}{The function to call once preceding stream operations are complete}
  \item{userData}{User specified data to be passed to the callback function}
  \item{flags}{Reserved for future use, must be 0}
}

\seealso{\code{\link{cuStreamCreate}}
\code{\link{cuStreamQuery}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
