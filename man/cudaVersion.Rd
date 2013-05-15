\name{cudaVersion}
\alias{cudaVersion}
\title{Determine the version of the CUDA SDK}
\description{
  This function allows us to query the version of the CUDA
  SDK - software development toolkit.
}
\usage{
cudaVersion()
}
\value{
  An integer vector of length 2, with elements named
  driver and runtime. 
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html#group__CUDA__VERSION}
}
\author{
Duncan Temple Lang
}
%\seealso{}
\examples{
cudaVersion()
}
\keyword{programming}
