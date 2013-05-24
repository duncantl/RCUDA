\name{cuCtxSetSharedMemConfig}
\alias{cuCtxSetSharedMemConfig}
\title{Sets the shared memory configuration for the current context.}
\description{ On devices with configurable shared memory banks, this function will set
 the context's shared memory bank size which is used for subsequent kernel 
 launches. }
\usage{cuCtxSetSharedMemConfig(config)}
\arguments{
  \item{config}{requested shared memory configuration}
}

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
