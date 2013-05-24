\name{cuModuleGetFunction}
\alias{cuModuleGetFunction}
\title{Returns a function handle}
\description{ Returns  the handle of the function of name \code{name} located in
 module \code{hmod}. If no function of that name exists, \code{cuModuleGetFunction}()
 returns \code{CUDA_ERROR_NOT_FOUND}.}
\usage{cuModuleGetFunction(hfunc, hmod, name)}
\arguments{
  \item{hfunc}{Returned function handle}
  \item{hmod}{Module to retrieve function from}
  \item{name}{Name of function to retrieve}
}

\seealso{\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
