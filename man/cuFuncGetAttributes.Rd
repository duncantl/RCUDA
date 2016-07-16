\name{cuFuncGetAttributes}
\alias{cuFuncGetAttributes}
\title{Get the attributes of CUDA kernel routine}
\description{
  This returns all of the attributes of a kernel routine.
  This loops over all the possible attributes and
  calls \code{\link{cuFuncGetAttribute}}.
}
\usage{
cuFuncGetAttributes(func)
}
\arguments{
  \item{func}{the reference to the loaded kernel routine from a CUDA module}
}
\value{
 A numeric vector.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}
}
\author{
Duncan Temple Lang
}

\seealso{
\code{\link{cuFuncGetAttribute}}
}
\examples{
if(getNumDevices() > 0) {
  ctx = cuGetContext(TRUE)
  ptx = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")
  m = loadModule(ptx)
  kernel = m$dnorm_kernel

  cuFuncGetAttributes(kernel)
}
}
\keyword{programming}

