\name{cuFuncSetSharedMemConfig}
\alias{cuFuncSetSharedMemConfig}
\title{Sets the shared memory configuration for a device function.}
\description{ On devices with configurable shared memory banks, this function will 
 force all subsequent launches of the specified device function to have
 the given shared memory bank size configuration. On any given launch of the
 function, the shared memory configuration of the device will be temporarily
 changed if needed to suit the function's preferred configuration. Changes in
 shared memory configuration between subsequent launches of functions, 
 may introduce a device side synchronization point.}
\usage{cuFuncSetSharedMemConfig(hfunc, config)}
\arguments{
  \item{hfunc}{kernel to be given a shared memory config}
  \item{config}{requested shared memory configuration}
}

\seealso{\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxGetSharedMemConfig}}
\code{\link{cuCtxSetSharedMemConfig}}
\code{\link{cuFuncGetAttribute}}
\code{cuLaunchKernel}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
