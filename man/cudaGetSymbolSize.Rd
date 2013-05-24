\name{cudaGetSymbolSize}
\alias{cudaGetSymbolSize}
\title{Finds the size of the object associated with a CUDA symbol}
\description{ Returns  the size of symbol \code{symbol}. \code{symbol} is a variable that
 resides in global or constant memory space. If \code{symbol} cannot be found, or
 if \code{symbol} is not declared in global or constant memory space, \code{*size} is
 unchanged and the error \code{cudaErrorInvalidSymbol} is returned.}
\usage{cudaGetSymbolSize(symbol)}
\arguments{
  \item{symbol}{Device symbol address}
}
\value{size}
\seealso{\code{\link{cudaGetSymbolAddress}}
\code{\link{cudaGetSymbolSize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
