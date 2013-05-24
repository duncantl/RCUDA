\name{cudaDeviceGetByPCIBusId}
\alias{cudaDeviceGetByPCIBusId}
\title{Returns a handle to a compute device}
\description{ Returns  a device ordinal given a PCI bus ID string.}
\usage{cudaDeviceGetByPCIBusId(pciBusId)}
\arguments{
  \item{pciBusId}{String in one of the following forms:}
}
\value{device}
\seealso{\code{\link{cudaDeviceGetPCIBusId}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
