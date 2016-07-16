\name{cuCtxEnablePeerAccess}
\alias{cuCtxEnablePeerAccess}
\title{Enables direct access to memory allocations in a peer context.}
\description{ If both the current context and \code{peerContext} are on devices which support unified
 addressing (as may be queried using \code{CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING}) and same
 major compute capability, then on success all allocations from \code{peerContext} will
 immediately be accessible by the current context.  See \code{CUDA_UNIFIED} for additional
 details.}
\usage{cuCtxEnablePeerAccess(peerContext, Flags)}
\arguments{
  \item{peerContext}{Peer context to enable direct access to from the current context}
  \item{Flags}{Reserved for future use and must be set to 0}
}

\seealso{\code{\link{cuDeviceCanAccessPeer}}
\code{\link{cuCtxDisablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
