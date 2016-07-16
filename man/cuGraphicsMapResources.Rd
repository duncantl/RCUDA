\name{cuGraphicsMapResources}
\alias{cuGraphicsMapResources}
\title{Map graphics resources for access by CUDA}
\description{ Maps the \code{count} graphics resources in \code{resources} for access by CUDA.}
\usage{cuGraphicsMapResources(count, hStream)}
\arguments{
  \item{count}{Number of resources to map}
  \item{hStream}{Stream with which to synchronize}
}
\value{resources}
\seealso{\code{\link{cuGraphicsResourceGetMappedPointer}}
\code{\link{cuGraphicsSubResourceGetMappedArray}}
\code{\link{cuGraphicsUnmapResources}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
