\name{cudaHostUnregister}
\alias{cudaHostUnregister}
\title{Unregisters a memory range that was registered with cudaHostRegister}
\description{ Unmaps the memory range whose base address is specified by \code{ptr}, and makes
 it pageable again.}
\usage{cudaHostUnregister(ptr)}
\arguments{
  \item{ptr}{Host pointer to memory to unregister}
}

\seealso{\code{\link{cudaHostUnregister}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
