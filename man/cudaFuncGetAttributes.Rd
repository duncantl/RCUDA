\name{cudaFuncGetAttributes}
\alias{cudaFuncGetAttributes}
\title{Find out attributes for a given function}
\description{ This function obtains the attributes of a function specified via \code{func}.
 \code{func} is a device function symbol and must be declared as a
 \code{__global__} function. The fetched attributes are placed in \code{attr}.
 If the specified function does not exist, then
 \code{cudaErrorInvalidDeviceFunction} is returned.}
\usage{cudaFuncGetAttributes(func)}
\arguments{
  \item{func}{Device function symbol}
}
\value{attr}
\seealso{\code{cudaConfigureCall}
\code{\link{cudaFuncSetCacheConfig}}
\code{\link{cudaFuncGetAttributes}}
\code{\link{cudaLaunch}}
\code{\link{cudaSetDoubleForDevice}}
\code{\link{cudaSetDoubleForHost}}
\code{cudaSetupArgument}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
