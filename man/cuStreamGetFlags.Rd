\name{cuStreamGetFlags}
\alias{cuStreamGetFlags}
\title{Query the flags of a given stream}
\description{ Query the flags of a stream created using \code{cuStreamCreate} or \code{cuStreamCreateWithPriority}
 and return the flags in \code{flags}.}
\usage{cuStreamGetFlags(hStream)}
\arguments{
  \item{hStream}{Handle to the stream to be queried}
}
\value{flags}
\seealso{\code{\link{cuStreamDestroy}}
\code{\link{cuStreamCreate}}
\code{\link{cuStreamGetPriority}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
