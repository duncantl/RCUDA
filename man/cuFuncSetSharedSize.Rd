\name{cuFuncSetSharedSize}
\alias{cuFuncSetSharedSize}
\title{Sets the dynamic shared-memory size for the function}
\description{ deprecated}
\usage{cuFuncSetSharedSize(hfunc, bytes)}
\arguments{
  \item{hfunc}{Kernel to specify dynamic sharedmemory size for}
  \item{bytes}{Dynamic sharedmemory size per thread in bytes}
}

\seealso{\code{\link{cuFuncSetBlockShape}}
\code{\link{cuFuncSetCacheConfig}}
\code{\link{cuFuncGetAttribute}}
\code{cuParamSetSize}
\code{cuParamSeti}
\code{cuParamSetf}
\code{cuParamSetv}
\code{cuLaunch}
\code{cuLaunchGrid}
\code{cuLaunchGridAsync}
\code{cuLaunchKernel}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
