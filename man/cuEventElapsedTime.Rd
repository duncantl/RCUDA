\name{cuEventElapsedTime}
\alias{cuEventElapsedTime}
\title{Computes the elapsed time between two events}
\description{ Computes the elapsed time between two events (in milliseconds with a
 resolution of around 0.5 microseconds).}
\usage{cuEventElapsedTime(hStart, hEnd)}
\arguments{
  \item{hStart}{Starting event}
  \item{hEnd}{Ending event}
}
\value{pMilliseconds}
\seealso{\code{\link{cuEventCreate}}
\code{\link{cuEventRecord}}
\code{\link{cuEventQuery}}
\code{\link{cuEventSynchronize}}
\code{\link{cuEventDestroy}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
