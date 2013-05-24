\name{cuCtxGetSharedMemConfig}
\alias{cuCtxGetSharedMemConfig}
\title{Returns the current shared memory configuration for the current context.}
\description{ This function will return in \code{pConfig} the current size of shared memory banks
 in the current context. On devices with configurable shared memory banks, 
 \code{cuCtxSetSharedMemConfig} can be used to change this setting, so that all 
 subsequent kernel launches will by default use the new bank size. When 
 \code{cuCtxGetSharedMemConfig} is called on devices without configurable shared 
 memory, it will return the fixed bank size of the hardware.}
\usage{cuCtxGetSharedMemConfig()}

\value{pConfig}
\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxGetLimit}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}
\code{\link{cuCtxGetSharedMemConfig}}
\code{\link{cuFuncSetCacheConfig}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
