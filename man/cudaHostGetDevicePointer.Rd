\name{cudaHostGetDevicePointer}
\alias{cudaHostGetDevicePointer}
\title{Passes back device pointer of mapped host memory allocated by}
\description{ Passes back the device pointer corresponding to the mapped, pinned host
 buffer allocated by \code{cudaHostAlloc}() or registered by \code{cudaHostRegister}().}
\usage{cudaHostGetDevicePointer(pHost, flags)}
\arguments{
  \item{pHost}{Requested host pointer mapping}
  \item{flags}{Flags for extensions (must be 0 for now)}
}
\value{pDevice}
\seealso{\code{\link{cudaSetDeviceFlags}}
\code{\link{cudaHostAlloc}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
