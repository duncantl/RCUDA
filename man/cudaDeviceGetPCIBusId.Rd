\name{cudaDeviceGetPCIBusId}
\alias{cudaDeviceGetPCIBusId}
\title{Returns a PCI Bus Id string for the device}
\description{ Returns an ASCII string identifying the device \code{dev} in the NULL-terminated
 string pointed to by \code{pciBusId}. \code{len} specifies the maximum length of the
 string that may be returned.}
\usage{cudaDeviceGetPCIBusId(device)}
\arguments{
  \item{device}{Device to get identifier string for}
}
\value{pciBusId
len}
\seealso{\code{\link{cudaDeviceGetByPCIBusId}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
