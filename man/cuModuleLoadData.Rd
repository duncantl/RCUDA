\name{cuModuleLoadData}
\alias{cuModuleLoadData}
\title{Load a module's data}
\description{ Takes a pointer \code{image} and loads the corresponding module \code{module} into
 the current context. The pointer may be obtained by mapping a \code{cubin} or
 \code{PTX} or \code{fatbin} file, passing a \code{cubin} or \code{PTX} or \code{fatbin} file
 as a NULL-terminated text string, or incorporating a \code{cubin} or \code{fatbin}
 object into the executable resources and using operating system calls such
 as Windows \code{FindResource()} to obtain the pointer.}
\usage{cuModuleLoadData(image)}
\arguments{
  \item{image}{Module data to load}
}
\value{module}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
