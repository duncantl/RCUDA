\name{cuCtxDisablePeerAccess}
\alias{cuCtxDisablePeerAccess}
\title{Disables direct access to memory allocations in a peer context and }
\description{  Returns \code{CUDA_ERROR_PEER_ACCESS_NOT_ENABLED} if direct peer access has 
 not yet been enabled from \code{peerContext} to the current context.}
\usage{cuCtxDisablePeerAccess(peerContext)}
\arguments{
  \item{peerContext}{Peer context to disable direct access to}
}

\seealso{\code{\link{cuDeviceCanAccessPeer}}
\code{\link{cuCtxEnablePeerAccess}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
