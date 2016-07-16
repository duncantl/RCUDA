\name{cuModuleLoadDataEx}
\alias{cuModuleLoadDataEx}
\title{Load a module's data with options}
\description{ Takes a pointer \code{image} and loads the corresponding module \code{module} into
 the current context. The pointer may be obtained by mapping a \code{cubin} or
 \code{PTX} or \code{fatbin} file, passing a \code{cubin} or \code{PTX} or \code{fatbin} file
 as a NULL-terminated text string, or incorporating a \code{cubin} or \code{fatbin}
 object into the executable resources and using operating system calls such
 as Windows \code{FindResource()} to obtain the pointer. Options are passed as
 an array via \code{options} and any corresponding parameters are passed in
 \code{optionValues}. The number of total options is supplied via \code{numOptions}.
 Any outputs will be returned via \code{optionValues}. Supported options are
 (types for the option values are specified in parentheses after the option
 name):}
\usage{cuModuleLoadDataEx(image, options = integer(), opts = FALSE)}
\arguments{
  \item{image}{Module data to load}
  \item{options}{the vector of options, enumerated types}
  \item{opts}{a logical value, currently ignored.}
}
\value{module
options
optionValues}
\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadFatBinary}}
\code{\link{cuModuleUnload}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
