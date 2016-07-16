\name{cudaStreamDestroy}
\alias{cudaStreamDestroy}
\title{Destroys and cleans up an asynchronous stream}
\description{ Destroys and cleans up the asynchronous stream specified by \code{stream}.}
\usage{cudaStreamDestroy(stream)}
\arguments{
  \item{stream}{Stream identifier}
}

\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamCreateWithFlags}}
\code{\link{cudaStreamQuery}}
\code{\link{cudaStreamWaitEvent}}
\code{\link{cudaStreamSynchronize}}
\code{\link{cudaStreamAddCallback}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
