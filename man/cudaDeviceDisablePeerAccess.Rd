\name{cudaDeviceDisablePeerAccess}
\alias{cudaDeviceDisablePeerAccess}
\title{Disables direct access to memory allocations on a peer device.}
\description{ Returns \code{cudaErrorPeerAccessNotEnabled} if direct access to memory on
 \code{peerDevice} has not yet been enabled from the current device.}
\usage{cudaDeviceDisablePeerAccess(peerDevice)}
\arguments{
  \item{peerDevice}{Peer device to disable direct access to}
}

\seealso{\code{\link{cudaDeviceCanAccessPeer}}
\code{\link{cudaDeviceEnablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
