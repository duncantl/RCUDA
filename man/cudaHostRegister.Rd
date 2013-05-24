\name{cudaHostRegister}
\alias{cudaHostRegister}
\title{Registers an existing host memory range for use by CUDA}
\description{ Page-locks the memory range specified by \code{ptr} and \code{size} and maps it
 for the device(s) as specified by \code{flags}. This memory range also is added
 to the same tracking mechanism as \code{cudaHostAlloc}() to automatically accelerate
 calls to functions such as \code{cudaMemcpy}(). Since the memory can be accessed 
 directly by the device, it can be read or written with much higher bandwidth 
 than pageable memory that has not been registered.  Page-locking excessive
 amounts of memory may degrade system performance, since it reduces the amount
 of memory available to the system for paging. As a result, this function is
 best used sparingly to register staging areas for data exchange between
 host and device.}
\usage{cudaHostRegister(ptr, size, flags)}
\arguments{
  \item{ptr}{Host pointer to memory to pagelock}
  \item{size}{Size in bytes of the address range to pagelock in bytes}
  \item{flags}{Flags for allocation request}
}

\seealso{\code{\link{cudaHostUnregister}}
\code{\link{cudaHostGetFlags}}
\code{\link{cudaHostGetDevicePointer}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
