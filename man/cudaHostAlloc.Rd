\name{cudaHostAlloc}
\alias{cudaHostAlloc}
\title{Allocates page-locked memory on the host}
\description{ Allocates \code{size} bytes of host memory that is page-locked and accessible
 to the device. The driver tracks the virtual memory ranges allocated with
 this function and automatically accelerates calls to functions such as
 \code{cudaMemcpy}(). Since the memory can be accessed directly by the device, it
 can be read or written with much higher bandwidth than pageable memory
 obtained with functions such as \code{malloc}(). Allocating excessive amounts of
 pinned memory may degrade system performance, since it reduces the amount
 of memory available to the system for paging. As a result, this function is
 best used sparingly to allocate staging areas for data exchange between host
 and device.}
\usage{cudaHostAlloc(size, flags)}
\arguments{
  \item{size}{Requested allocation size in bytes}
  \item{flags}{Requested properties of allocated memory}
}
\value{pHost}
\seealso{\code{\link{cudaSetDeviceFlags}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
