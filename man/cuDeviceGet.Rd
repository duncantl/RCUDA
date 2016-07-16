\name{cuDeviceGet}
\alias{cuDeviceGet}
\title{Returns a handle to a compute device}
\description{ Returns  a device handle given an ordinal in the range [1,
 \code{cuDeviceGetCount}()].}
\usage{cuDeviceGet(ordinal)}
\arguments{
  \item{ordinal}{Device number to get handle for}
}

\seealso{\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetCount}}
\code{\link{cuDeviceGetName}}
\code{\link{cuDeviceTotalMem}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
