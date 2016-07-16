\name{cuDeviceCanAccessPeer}
\alias{cuDeviceCanAccessPeer}
\title{Queries if a device may directly access a peer device's memory.}
\description{ Returns  a value of 1 if contexts on \code{dev} are capable of
 directly accessing memory from contexts on \code{peerDev} and 0 otherwise.
 If direct access of \code{peerDev} from \code{dev} is possible, then access may be
 enabled on two specific contexts by calling \code{cuCtxEnablePeerAccess}().}
\usage{cuDeviceCanAccessPeer(dev, peerDev)}
\arguments{
  \item{dev}{Device from which allocations on \code{peerDev} are to}
  \item{peerDev}{Device on which the allocations to be directly accessed}
}
\value{canAccessPeer}
\seealso{\code{\link{cuCtxEnablePeerAccess}}
\code{\link{cuCtxDisablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
