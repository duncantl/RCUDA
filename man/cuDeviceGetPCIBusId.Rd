\name{cuDeviceGetPCIBusId}
\alias{cuDeviceGetPCIBusId}
\title{Returns a PCI Bus Id string for the device}
\description{ Returns an ASCII string identifying the device \code{dev} in the NULL-terminated
 string pointed to by \code{pciBusId}. \code{len} specifies the maximum length of the
 string that may be returned.}
\usage{cuDeviceGetPCIBusId(dev)}
\arguments{
  \item{dev}{Device to get identifier string for}
}
\value{pciBusId
len}
\seealso{\code{\link{cuDeviceGet}}
\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetByPCIBusId}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
