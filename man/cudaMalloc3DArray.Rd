\name{cudaMalloc3DArray}
\alias{cudaMalloc3DArray}
\title{Allocate an array on the device}
\description{ Allocates a CUDA array according to the \code{cudaChannelFormatDesc} structure
 \code{desc} and returns a handle to the new CUDA array .}
\usage{cudaMalloc3DArray(desc, extent, flags)}
\arguments{
  \item{desc}{Requested channel format}
  \item{extent}{Requested allocation size (\code{width} field in elements)}
  \item{flags}{Flags for extensions}
}
\value{array}
\seealso{\code{\link{cudaMalloc3D}}
\code{\link{cudaMalloc}}
\code{\link{cudaMallocPitch}}
\code{cudaFree}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}
\code{\link{cudaHostAlloc}}
\code{make_cudaExtent}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
