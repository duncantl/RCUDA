\name{cudaCreateChannelDesc}
\alias{cudaCreateChannelDesc}
\title{Returns a channel descriptor using the specified format}
\description{ Returns a channel descriptor with format \code{f} and number of bits of each
 component \code{x}, \code{y}, \code{z}, and \code{w}.  The \code{cudaChannelFormatDesc} is
 defined as:
 \verb{
  struct cudaChannelFormatDesc {
    int x, y, z, w;
    enum cudaChannelFormatKind f;
  };
 }}
\usage{cudaCreateChannelDesc(x, y, z, w, f)}
\arguments{
  \item{x}{X component}
  \item{y}{Y component}
  \item{z}{Z component}
  \item{w}{W component}
  \item{f}{Channel format}
}

\seealso{\code{\link{cudaCreateChannelDesc}}
\code{\link{cudaGetChannelDesc}}
\code{cudaGetTextureReference}
\code{cudaBindTexture}
\code{cudaBindTexture2D}
\code{cudaBindTextureToArray}
\code{cudaUnbindTexture}
\code{cudaGetTextureAlignmentOffset}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
