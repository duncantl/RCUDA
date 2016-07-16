\name{cudaPeekAtLastError}
\alias{cudaPeekAtLastError}
\title{Returns the last error from a runtime call}
\description{ Returns the last error that has been produced by any of the runtime calls
 in the same host thread. Note that this call does not reset the error to
 \code{cudaSuccess} like \code{cudaGetLastError}().}
\usage{cudaPeekAtLastError()}



\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
