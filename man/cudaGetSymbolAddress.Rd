\name{cudaGetSymbolAddress}
\alias{cudaGetSymbolAddress}
\title{Finds the address associated with a CUDA symbol}
\description{ Returns  the address of symbol \code{symbol} on the device.
 \code{symbol} is a variable that resides in global or constant memory space.
 If \code{symbol} cannot be found, or if \code{symbol} is not declared in the
 global or constant memory space, \code{*devPtr} is unchanged and the error
 \code{cudaErrorInvalidSymbol} is returned.}
\usage{cudaGetSymbolAddress(symbol)}
\arguments{
  \item{symbol}{Device symbol address}
}
\value{devPtr}
\seealso{\code{\link{cudaGetSymbolAddress}}
\code{\link{cudaGetSymbolSize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
