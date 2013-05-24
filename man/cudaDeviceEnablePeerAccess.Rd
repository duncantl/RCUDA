\name{cudaDeviceEnablePeerAccess}
\alias{cudaDeviceEnablePeerAccess}
\title{Enables direct access to memory allocations on a peer device.}
\description{ On success, all allocations from \code{peerDevice} will immediately be accessible by
 the current device.  They will remain accessible until access is explicitly
 disabled using \code{cudaDeviceDisablePeerAccess}() or either device is reset using
 \code{cudaDeviceReset}().}
\usage{cudaDeviceEnablePeerAccess(peerDevice, flags)}
\arguments{
  \item{peerDevice}{Peer device to enable direct access to from the current device}
  \item{flags}{Reserved for future use and must be set to 0}
}

\seealso{\code{\link{cudaDeviceCanAccessPeer}}
\code{\link{cudaDeviceDisablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
