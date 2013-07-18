\name{cuStreamQuery}
\alias{cuStreamQuery}
\title{Determine status of a compute stream}
\description{ Returns \code{CUDA_SUCCESS} if all operations in the stream specified by
 \code{hStream} have completed, or \code{CUDA_ERROR_NOT_READY} if not.}
\usage{cuStreamQuery(hStream)}
\arguments{
  \item{hStream}{Stream to query status of}
}

\seealso{\code{\link{cuStreamCreate}}
\code{\link{cuStreamWaitEvent}}
\code{\link{cuStreamDestroy}}
\code{\link{cuStreamSynchronize}}
\code{\link{cuStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
