\name{cudaGraphicsUnmapResources}
\alias{cudaGraphicsUnmapResources}
\title{Unmap graphics resources.}
\description{ Unmaps the \code{count} graphics resources in \code{resources}.}
\usage{cudaGraphicsUnmapResources(count, stream)}
\arguments{
  \item{count}{Number of resources to unmap}
  \item{stream}{Stream for synchronization}
}
\value{resources}
\seealso{\code{\link{cudaGraphicsMapResources}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
