\name{cuDeviceTotalMem}
\alias{cuDeviceTotalMem}
\title{Returns the total amount of memory on the device}
\description{ Returns  the total amount of memory available on the device
 \code{dev} in bytes.}
\usage{cuDeviceTotalMem(dev)}
\arguments{
  \item{dev}{Device handle}
}
\value{bytes}
\seealso{\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetCount}}
\code{\link{cuDeviceGetName}}
\code{\link{cuDeviceGet}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
