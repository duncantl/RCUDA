\name{cudaChooseDevice}
\alias{cudaChooseDevice}
\title{Select compute-device which best matches criteria}
\description{ Returns  the device which has properties that best match
 \code{*prop}.}
\usage{cudaChooseDevice(prop)}
\arguments{
  \item{prop}{Desired device properties}
}
\value{device}
\seealso{\code{cudaGetDeviceCount}
\code{\link{cudaGetDevice}}
\code{cudaSetDevice}
\code{cudaGetDeviceProperties}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
