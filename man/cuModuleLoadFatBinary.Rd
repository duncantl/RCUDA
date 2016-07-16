\name{cuModuleLoadFatBinary}
\alias{cuModuleLoadFatBinary}
\title{Load a module's data}
\description{ Takes a pointer \code{fatCubin} and loads the corresponding module \code{module}
 into the current context. The pointer represents a <i>fat binary</i> object,
 which is a collection of different \code{cubin} and/or \code{PTX} files, all
 representing the same device code, but compiled and optimized for different
 architectures.}
\usage{cuModuleLoadFatBinary(fatCubin)}
\arguments{
  \item{fatCubin}{Fat binary to load}
}
\value{module}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
