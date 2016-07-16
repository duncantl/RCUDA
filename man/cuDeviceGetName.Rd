\name{cuDeviceGetName}
\alias{cuDeviceGetName}
\title{Returns an identifer string for the device}
\description{ Returns an ASCII string identifying the device \code{dev} in the NULL-terminated
 string pointed to by \code{name}. \code{len} specifies the maximum length of the
 string that may be returned.}
\usage{cuDeviceGetName(dev)}
\arguments{
  \item{dev}{Device to get identifier string for}
}
\value{name
len}
\seealso{\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetCount}}
\code{\link{cuDeviceGet}}
\code{\link{cuDeviceTotalMem}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
