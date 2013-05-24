\name{cuFuncSetBlockShape}
\alias{cuFuncSetBlockShape}
\title{Sets the block-dimensions for the function}
\description{ deprecated}
\usage{cuFuncSetBlockShape(hfunc, x, y, z)}
\arguments{
  \item{hfunc}{Kernel to specify dimensions of}
  \item{x}{X dimension}
  \item{y}{Y dimension}
  \item{z}{Z dimension}
}

\seealso{\code{\link{cuFuncSetSharedSize}}
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
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
