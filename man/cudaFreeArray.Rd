\name{cudaFreeArray}
\alias{cudaFreeArray}
\title{Frees an array on the device}
\description{ Frees the CUDA array \code{array}, which must have been * returned by a
 previous call to \code{cudaMallocArray}(). If \code{cudaFreeArray}(\code{array)} has
 already been called before, \code{cudaErrorInvalidValue} is returned. If
 \code{devPtr} is 0, no operation is performed.}
\usage{cudaFreeArray(array)}
\arguments{
  \item{array}{Pointer to array to free}
}

\seealso{\code{\link{cudaMalloc}}
\code{\link{cudaMallocPitch}}
\code{cudaFree}
\code{\link{cudaMallocArray}}
\code{\link{cudaMallocHost}}
\code{\link{cudaFreeHost}}
\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
