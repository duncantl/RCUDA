\name{cudaLaunch}
\alias{cudaLaunch}
\title{Launches a device function}
\description{ Launches the function \code{func} on the device. The parameter \code{func} must
 be a device function symbol. The parameter specified by \code{func} must be
 declared as a \code{__global__} function.
 \code{cudaLaunch} must be preceded by a call to
 \code{cudaConfigureCall}() since it pops the data that was pushed by
 \code{cudaConfigureCall}() from the execution stack.}
\usage{cudaLaunch(func)}
\arguments{
  \item{func}{Device function symbol}
}

\seealso{\code{cudaConfigureCall}
\code{\link{cudaFuncSetCacheConfig}}
\code{\link{cudaFuncGetAttributes}}
\code{\link{cudaLaunch}}
\code{\link{cudaSetDoubleForDevice}}
\code{\link{cudaSetDoubleForHost}}
\code{cudaSetupArgument}
\code{cudaThreadGetCacheConfig}
\code{cudaThreadSetCacheConfig}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
