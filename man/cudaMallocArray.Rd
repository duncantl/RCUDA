\name{cudaMallocArray}
\alias{cudaMallocArray}
\title{Allocate an array on the device}
\description{ Allocates a CUDA array according to the \code{cudaChannelFormatDesc} structure
 \code{desc} and returns a handle to the new CUDA array .}
\usage{cudaMallocArray(desc, width, height, flags)}
\arguments{
  \item{desc}{Requested channel format}
  \item{width}{Requested array allocation width}
  \item{height}{Requested array allocation height}
  \item{flags}{Requested properties of allocated array}
}
\value{array}
\seealso{\code{\link{cudaMalloc}}
\code{\link{cudaMallocPitch}}
\code{cudaFree}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}
\code{\link{cudaMalloc3D}}
\code{\link{cudaMalloc3DArray}}
\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
