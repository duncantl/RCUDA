\name{cuGraphicsResourceGetMappedPointer}
\alias{cuGraphicsResourceGetMappedPointer}
\title{Get a device pointer through which to access a mapped graphics resource.}
\description{ Returns  a pointer through which the mapped graphics resource
 \code{resource} may be accessed.
 Returns in \code{pSize} the size of the memory in bytes which may be accessed from that pointer.
 The value set in \code{pPointer} may change every time that \code{resource} is mapped.}
\usage{cuGraphicsResourceGetMappedPointer(resource)}
\arguments{
  \item{resource}{Mapped resource to access}
}
\value{pDevPtr
pSize}
\seealso{\code{\link{cuGraphicsMapResources}}
\code{\link{cuGraphicsSubResourceGetMappedArray}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
