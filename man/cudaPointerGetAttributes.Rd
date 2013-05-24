\name{cudaPointerGetAttributes}
\alias{cudaPointerGetAttributes}
\title{Returns attributes about a specified pointer}
\description{ Returns  the attributes of the pointer \code{ptr}.}
\usage{cudaPointerGetAttributes(ptr)}
\arguments{
  \item{ptr}{Pointer to get attributes for}
}
\value{attributes}
\seealso{\code{cudaGetDeviceCount}
\code{\link{cudaGetDevice}}
\code{cudaSetDevice}
\code{\link{cudaChooseDevice}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
