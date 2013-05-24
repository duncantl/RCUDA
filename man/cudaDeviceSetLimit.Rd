\name{cudaDeviceSetLimit}
\alias{cudaDeviceSetLimit}
\title{Set resource limits}
\description{ Setting \code{limit} to \code{value} is a request by the application to update
 the current limit maintained by the device.  The driver is free to
 modify the requested value to meet h/w requirements (this could be
 clamping to minimum or maximum values, rounding up to nearest element
 size, etc).  The application can use \code{cudaDeviceGetLimit}() to find out
 exactly what the limit has been set to.}
\usage{cudaDeviceSetLimit(limit, value)}
\arguments{
  \item{limit}{Limit to set}
  \item{value}{Size of limit}
}

\seealso{\code{\link{cudaDeviceGetLimit}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
