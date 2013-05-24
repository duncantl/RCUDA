\name{cudaGraphicsSubResourceGetMappedArray}
\alias{cudaGraphicsSubResourceGetMappedArray}
\title{Get an array through which to access a subresource of a mapped graphics resource.}
\description{ Returns  an array through which the subresource of the mapped
 graphics resource \code{resource} which corresponds to array index \code{arrayIndex}
 and mipmap level \code{mipLevel} may be accessed.  The value set in \code{array} may
 change every time that \code{resource} is mapped.}
\usage{cudaGraphicsSubResourceGetMappedArray(resource, arrayIndex, mipLevel)}
\arguments{
  \item{resource}{Mapped resource to access}
  \item{arrayIndex}{Array index for array textures or cubemap face}
  \item{mipLevel}{Mipmap level for the subresource to access}
}
\value{array}
\seealso{\code{\link{cudaGraphicsResourceGetMappedPointer}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
