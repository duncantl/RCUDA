\name{cuStreamGetPriority}
\alias{cuStreamGetPriority}
\title{Query the priority of a given stream}
\description{ Query the priority of a stream created using \code{cuStreamCreate} or \code{cuStreamCreateWithPriority}
 and return the priority in \code{priority}. Note that if the stream was created with a
 priority outside the numerical range returned by \code{cuCtxGetStreamPriorityRange},
 this function returns the clamped priority.
 See \code{cuStreamCreateWithPriority} for details about priority clamping.}
\usage{cuStreamGetPriority(hStream)}
\arguments{
  \item{hStream}{Handle to the stream to be queried}
}
\value{priority}
\seealso{\code{\link{cuStreamDestroy}}
\code{\link{cuStreamCreate}}
\code{\link{cuStreamCreateWithPriority}}
\code{cuCtxGetStreamPriorityRange}
\code{\link{cuStreamGetFlags}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
