\name{cudaArrayGetInfo}
\alias{cudaArrayGetInfo}
\title{Gets info about the specified cudaArray}
\description{ Any of \code{*desc}, \code{*extent} and \code{*flags} may be specified as NULL.}
\usage{cudaArrayGetInfo(array)}
\arguments{
  \item{array}{The \code{cudaArray} to get info for}
}
\value{desc
extent
flags}

\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
