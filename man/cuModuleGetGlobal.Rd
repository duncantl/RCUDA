\name{cuModuleGetGlobal}
\alias{cuModuleGetGlobal}
\title{Returns a global pointer from a module}
\description{ Returns  and \code{*bytes} the base pointer and size of the
 global of name \code{name} located in module \code{hmod}. If no variable of that name
 exists, \code{cuModuleGetGlobal}() returns \code{CUDA_ERROR_NOT_FOUND}. Both
 parameters \code{dptr} and \code{bytes} are optional. If one of them is
 NULL, it is ignored.}
\usage{cuModuleGetGlobal(hmod, name)}
\arguments{
  \item{hmod}{Module to retrieve global from}
  \item{name}{Name of global to retrieve}
}
\value{dptr
bytes}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
