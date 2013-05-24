\name{cudaDeviceCanAccessPeer}
\alias{cudaDeviceCanAccessPeer}
\title{Queries if a device may directly access a peer device's memory.}
\description{ Returns  a value of 1 if device \code{device} is capable of
 directly accessing memory from \code{peerDevice} and 0 otherwise.  If direct
 access of \code{peerDevice} from \code{device} is possible, then access may be
 enabled by calling \code{cudaDeviceEnablePeerAccess}().}
\usage{cudaDeviceCanAccessPeer(device, peerDevice)}
\arguments{
  \item{device}{Device from which allocations on \code{peerDevice} are to}
  \item{peerDevice}{Device on which the allocations to be directly accessed}
}
\value{canAccessPeer}
\seealso{\code{\link{cudaDeviceEnablePeerAccess}}
\code{\link{cudaDeviceDisablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
