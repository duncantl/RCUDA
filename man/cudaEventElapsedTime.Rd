\name{cudaEventElapsedTime}
\alias{cudaEventElapsedTime}
\title{Computes the elapsed time between events}
\description{ Computes the elapsed time between two events (in milliseconds with a
 resolution of around 0.5 microseconds).}
\usage{cudaEventElapsedTime(start, end)}
\arguments{
  \item{start}{Starting event}
  \item{end}{Ending event}
}
\value{ms}
\seealso{\code{\link{cudaEventCreate}}
\code{\link{cudaEventCreateWithFlags}}
\code{\link{cudaEventQuery}}
\code{\link{cudaEventSynchronize}}
\code{\link{cudaEventDestroy}}
\code{\link{cudaEventRecord}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
