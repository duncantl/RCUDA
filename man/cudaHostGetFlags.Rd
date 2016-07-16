\name{cudaHostGetFlags}
\alias{cudaHostGetFlags}
\title{Passes back flags used to allocate pinned host memory allocated by}
\description{ \code{cudaHostGetFlags}() will fail if the input pointer does not
 reside in an address range allocated by \code{cudaHostAlloc}().}
\usage{cudaHostGetFlags(pHost)}
\arguments{
  \item{pHost}{Host pointer}
}
\value{pFlags}
\seealso{\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
