\name{cudaGraphicsMapResources}
\alias{cudaGraphicsMapResources}
\title{Map graphics resources for access by CUDA}
\description{ Maps the \code{count} graphics resources in \code{resources} for access by CUDA.}
\usage{cudaGraphicsMapResources(count, stream)}
\arguments{
  \item{count}{Number of resources to map}
  \item{stream}{Stream for synchronization}
}
\value{resources}
\seealso{\code{\link{cudaGraphicsResourceGetMappedPointer}}
\code{\link{cudaGraphicsSubResourceGetMappedArray}}
\code{\link{cudaGraphicsUnmapResources}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
