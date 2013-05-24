\name{getDeviceProperties}
\alias{getDeviceProperties}
\alias{getDeviceProps}
\alias{getNumDevices}
\alias{cuDeviceGetAttributes}
\title{Query the number and details of the GPU devices}
\description{
  These functions allow us to determine the number of
  GPU devices available on the current machine and
  also all of their charateristics or properties.
}
\usage{
getNumDevices()
getDeviceProperties(num = 1L)
cuDeviceGetAttributes(dev = 1L)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{num,dev}{the identifier for the device. Generally, we identify a
    device by its number, starting at 1. Alternatively, we can use an
    object of class \code{CUDeviceNum}}
}
\value{
  \code{getNumDevices} returns the number of available devices.
  \code{getDeviceProperties} returns an object of class
  \code{cudaDeviceProp}. This is an S4 class with numerous slots
  describing many aspects of the GPU.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html#group__CUDA__DEVICE}
}
\author{
Duncan Temple  Lang
}
%\seealso{}
\examples{
  n = getNumDevices()
  sapply(1:n, getDeviceProperties)
}
\keyword{programming}
