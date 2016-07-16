\name{cudaGetChannelDesc}
\alias{cudaGetChannelDesc}
\title{Get the channel descriptor of an array}
\description{ Returns  the channel descriptor of the CUDA array \code{array}.}
\usage{cudaGetChannelDesc(array)}
\arguments{
  \item{array}{Memory array on device}
}
\value{desc}
\seealso{\code{\link{cudaCreateChannelDesc}}
\code{cudaGetTextureReference}
\code{cudaBindTexture}
\code{cudaBindTexture2D}
\code{cudaBindTextureToArray}
\code{cudaUnbindTexture}
\code{cudaGetTextureAlignmentOffset}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
