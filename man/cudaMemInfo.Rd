\name{cuMemInfo}
\alias{cuMemInfo}
\alias{cuMemInfo}
\title{Determine the memory on the active GPU}
\description{
This function determines the total and free memory available on the current GPU.
}
\usage{
cuMemInfo()
}
\value{
  A numeric vector of length 3 with elements
  giving the total number of bytes free, total number of available bytes
  and the percentage free.
}
\references{
 \url{http://docs.nvidia.com/cuda/cuda-driver-api/group__CUDA__MEM.html#group__CUDA__MEM_1g808f555540d0143a331cc42aa98835c0}
}
\author{
Duncan Temple Lang
}
\seealso{
 \code{\link{copyToDevice}},  \code{\link{cudaAlloc}}
}
\examples{
if(getNumDevices() > 0) {
 cuGetContext(TRUE)
 cuMemInfo()[3]  # percentage free
 cuMemInfo()[1:2]  # totals
}
}
\keyword{programming}
