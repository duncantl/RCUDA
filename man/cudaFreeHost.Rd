\name{cudaFreeHost}
\alias{cudaFreeHost}
\title{Frees page-locked memory}
\description{ Frees the memory space pointed to by \code{hostPtr}, which must have been
 returned by a previous call to \code{cudaMallocHost}() or \code{cudaHostAlloc}().}
\usage{cudaFreeHost(ptr)}
\arguments{
  \item{ptr}{Pointer to memory to free}
}

\seealso{\code{\link{cudaMalloc}}
\code{\link{cudaMallocPitch}}
\code{cudaFree}
\code{\link{cudaMallocArray}}
\code{\link{cudaFreeArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaMalloc3D}}
\code{\link{cudaMalloc3DArray}}
\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
