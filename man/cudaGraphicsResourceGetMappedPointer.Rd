\name{cudaGraphicsResourceGetMappedPointer}
\alias{cudaGraphicsResourceGetMappedPointer}
\title{Get an device pointer through which to access a mapped graphics resource.}
\description{ Returns  a pointer through which the mapped graphics resource
 \code{resource} may be accessed.
 Returns  the size of the memory in bytes which may be accessed from that pointer.
 The value set in \code{devPtr} may change every time that \code{resource} is mapped.}
\usage{cudaGraphicsResourceGetMappedPointer(resource)}
\arguments{
  \item{resource}{Mapped resource to access}
}
\value{devPtr
size}
\seealso{\code{\link{cudaGraphicsMapResources}}
\code{\link{cudaGraphicsSubResourceGetMappedArray}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
