\name{cuDeviceGetCount}
\alias{cuDeviceGetCount}
\title{Returns the number of compute-capable devices}
\description{ Returns  the number of devices with compute capability greater
 than or equal to 1.0 that are available for execution. If there is no such
 device, \code{cuDeviceGetCount}() returns 0.}
\usage{cuDeviceGetCount()}

\value{count}
\seealso{\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetName}}
\code{\link{cuDeviceGet}}
\code{\link{cuDeviceTotalMem}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
