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
  \url{http://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART____VERSION.html#group__CUDART____VERSION_1g8a06ee14a0551606b7c780084d5564ab}
}
\author{
Duncan Temple Lang
}
%\seealso{}
\examples{
cudaVersion()
}
\keyword{programming}
