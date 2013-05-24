\name{cudaMallocPitch}
\alias{cudaMallocPitch}
\title{Allocates pitched memory on the device}
\description{ Allocates at least \code{width} (in bytes) * \code{height} bytes of linear memory
 on the device and returns  a pointer to the allocated memory.
 The function may pad the allocation to ensure that corresponding pointers
 in any given row will continue to meet the alignment requirements for
 coalescing as the address is updated from row to row. The pitch returned in
 \code{*pitch} by \code{cudaMallocPitch}() is the width in bytes of the allocation.
 The intended usage of \code{pitch} is as a separate parameter of the allocation,
 used to compute addresses within the 2D array. Given the row and column of
 an array element of type \code{T}, the address is computed as:
 \verb{
    T* pElement = (T*)((char*)BaseAddress + Row * pitch) + Column;
   }}
\usage{cudaMallocPitch(width, height)}
\arguments{
  \item{width}{Requested pitched allocation width (in bytes)}
  \item{height}{Requested pitched allocation height}
}
\value{devPtr
pitch}
\seealso{\code{\link{cudaMalloc}}
\code{cudaFree}
\code{\link{cudaMallocArray}}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}
\code{\link{cudaMalloc3D}}
\code{\link{cudaMalloc3DArray}}
\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
