\name{cuGraphicsUnmapResources}
\alias{cuGraphicsUnmapResources}
\title{Unmap graphics resources.}
\description{ Unmaps the \code{count} graphics resources in \code{resources}.}
\usage{cuGraphicsUnmapResources(count, hStream)}
\arguments{
  \item{count}{Number of resources to unmap}
  \item{hStream}{Stream with which to synchronize}
}
\value{resources}
\seealso{\code{\link{cuGraphicsMapResources}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
