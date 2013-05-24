\name{cudaMalloc3D}
\alias{cudaMalloc3D}
\title{Allocates logical 1D, 2D, or 3D memory objects on the device}
\description{ Allocates at least \code{width} * \code{height} * \code{depth} bytes of linear memory
 on the device and returns a \code{cudaPitchedPtr} in which \code{ptr} is a pointer
 to the allocated memory. The function may pad the allocation to ensure
 hardware alignment requirements are met. The pitch returned in the \code{pitch}
 field of \code{pitchedDevPtr} is the width in bytes of the allocation.}
\usage{cudaMalloc3D(extent)}
\arguments{
  \item{extent}{Requested allocation size (\code{width} field in bytes)}
}
\value{pitchedDevPtr}
\seealso{\code{\link{cudaMallocPitch}}
\code{cudaFree}
\code{cudaMemcpy3D}
\code{cudaMemset3D}
\code{\link{cudaMalloc3DArray}}
\code{\link{cudaMallocArray}}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}
\code{\link{cudaHostAlloc}}
\code{make_cudaPitchedPtr}
\code{make_cudaExtent}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
