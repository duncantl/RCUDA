\name{cudaStreamCreateWithFlags}
\alias{cudaStreamCreateWithFlags}
\title{Create an asynchronous stream}
\description{ Creates a new asynchronous stream.  The \code{flags} argument determines the 
 behaviors of the stream.  Valid values for \code{flags} are
 - \code{cudaStreamDefault}: Default stream creation flag.
 - \code{cudaStreamNonBlocking}: Specifies that work running in the created 
   stream may run concurrently with work in stream 0 (the NULL stream), and that
   the created stream should perform no implicit synchronization with stream 0.}
\usage{cudaStreamCreateWithFlags(flags)}
\arguments{
  \item{flags}{Parameters for stream creation}
}
\value{pStream}
\seealso{\code{\link{cudaStreamCreate}}
\code{\link{cudaStreamQuery}}
\code{\link{cudaStreamSynchronize}}
\code{\link{cudaStreamWaitEvent}}
\code{\link{cudaStreamAddCallback}}
\code{\link{cudaStreamDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
