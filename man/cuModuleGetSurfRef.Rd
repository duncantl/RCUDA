\name{cuModuleGetSurfRef}
\alias{cuModuleGetSurfRef}
\title{Returns a handle to a surface reference}
\description{ Returns  the handle of the surface reference of name \code{name}
 in the module \code{hmod}. If no surface reference of that name exists,
 \code{cuModuleGetSurfRef}() returns \code{CUDA_ERROR_NOT_FOUND}.}
\usage{cuModuleGetSurfRef(hmod, name)}
\arguments{
  \item{hmod}{Module to retrieve surface reference from}
  \item{name}{Name of surface reference to retrieve}
}
\value{pSurfRef}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
