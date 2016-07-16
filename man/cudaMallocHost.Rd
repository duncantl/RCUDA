\name{cudaMallocHost}
\alias{cudaMallocHost}
\title{Allocates page-locked memory on the host}
\description{ Allocates \code{size} bytes of host memory that is page-locked and accessible
 to the device. The driver tracks the virtual memory ranges allocated with
 this function and automatically accelerates calls to functions such as
 \code{cudaMemcpy}*(). Since the memory can be accessed directly by the device,
 it can be read or written with much higher bandwidth than pageable memory
 obtained with functions such as \code{malloc}(). Allocating excessive amounts of
 memory with \code{cudaMallocHost}() may degrade system performance, since it
 reduces the amount of memory available to the system for paging. As a
 result, this function is best used sparingly to allocate staging areas for
 data exchange between host and device.}
\usage{cudaMallocHost(size)}
\arguments{
  \item{size}{Requested allocation size in bytes}
}
\value{ptr}
\seealso{\code{\link{cudaMalloc}}
\code{\link{cudaMallocPitch}}
\code{\link{cudaMallocArray}}
\code{\link{cudaMalloc3D}}
\code{\link{cudaMalloc3DArray}}
\code{\link{cudaHostAlloc}}
\code{cudaFree}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
