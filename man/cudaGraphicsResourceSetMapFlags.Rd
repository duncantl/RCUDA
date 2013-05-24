\name{cudaGraphicsResourceSetMapFlags}
\alias{cudaGraphicsResourceSetMapFlags}
\title{Set usage flags for mapping a graphics resource}
\description{ Set \code{flags} for mapping the graphics resource \code{resource}.}
\usage{cudaGraphicsResourceSetMapFlags(resource, flags)}
\arguments{
  \item{resource}{Registered resource to set flags for}
  \item{flags}{Parameters for resource mapping}
}

\seealso{\code{\link{cudaGraphicsMapResources}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
