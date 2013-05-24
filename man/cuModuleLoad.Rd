\name{cuModuleLoad}
\alias{cuModuleLoad}
\title{Loads a compute module}
\description{ Takes a filename \code{fname} and loads the corresponding module \code{module} into
 the current context. The CUDA driver API does not attempt to lazily
 allocate the resources needed by a module; if the memory for functions and
 data (constant and global) needed by the module cannot be allocated,
 \code{cuModuleLoad}() fails. The file should be a \code{cubin} file as output by
 \code{nvcc}, or a \code{PTX} file either as output by \code{nvcc} or handwritten, or
 a \code{fatbin} file as output by \code{nvcc} from toolchain 4.0 or later.}
\usage{cuModuleLoad(fname)}
\arguments{
  \item{fname}{Filename of module to load}
}
\value{module}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
