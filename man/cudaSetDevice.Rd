\name{cudaSetDevice}
\alias{cudaSetDevice}
\title{Set device to be used for GPU executions}
\description{ Sets \code{device} as the current device for the calling host thread.
 Valid device id's are 0 to (\code{cudaGetDeviceCount}() - 1).}
\usage{cudaSetDevice(device = 1L)}
\arguments{
  \item{device}{Device on which the active host thread should execute the}
}

\seealso{\code{cudaGetDeviceCount}
\code{\link{cudaGetDevice}}
\code{cudaGetDeviceProperties}
\code{\link{cudaChooseDevice}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
