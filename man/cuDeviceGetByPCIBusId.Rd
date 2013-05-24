\name{cuDeviceGetByPCIBusId}
\alias{cuDeviceGetByPCIBusId}
\title{Returns a handle to a compute device}
\description{ Returns  a device handle given a PCI bus ID string.}
\usage{cuDeviceGetByPCIBusId(dev, pciBusId)}
\arguments{
  \item{dev}{Returned device handle}
  \item{pciBusId}{String in one of the following forms:}
}

\seealso{\code{\link{cuDeviceGet}}
\code{\link{cuDeviceGetAttribute}}
\code{\link{cuDeviceGetPCIBusId}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
