\name{cudaSetDoubleForHost}
\alias{cudaSetDoubleForHost}
\title{Converts a double argument after execution on a device}
\description{ Converts the double value of \code{d} from a potentially internal float
 representation if the device does not support double arithmetic. If the
 device does natively support doubles, then this function does nothing.}
\usage{cudaSetDoubleForHost()}

\value{d}
\seealso{\code{cudaConfigureCall}
\code{\link{cudaFuncSetCacheConfig}}
\code{\link{cudaFuncGetAttributes}}
\code{\link{cudaLaunch}}
\code{\link{cudaSetDoubleForDevice}}
\code{cudaSetupArgument}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
