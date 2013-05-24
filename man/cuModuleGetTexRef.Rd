\name{cuModuleGetTexRef}
\alias{cuModuleGetTexRef}
\title{Returns a handle to a texture reference}
\description{ Returns  the handle of the texture reference of name \code{name}
 in the module \code{hmod}. If no texture reference of that name exists,
 \code{cuModuleGetTexRef}() returns \code{CUDA_ERROR_NOT_FOUND}. This texture reference
 handle should not be destroyed, since it will be destroyed when the module
 is unloaded.}
\usage{cuModuleGetTexRef(hmod, name)}
\arguments{
  \item{hmod}{Module to retrieve texture reference from}
  \item{name}{Name of texture reference to retrieve}
}
\value{pTexRef}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetSurfRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
