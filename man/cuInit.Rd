\name{cuInit}
\alias{cuInit}
\title{Initialize CUDA}
\description{
  This function ensures that the CUDA SDK is initialized.
  Typically, we don't have to explicitly initialize
  CUDA as it will be initialized when we call other functions.
}
\usage{
cuInit(flags = 0L)
}
\arguments{
  \item{flags}{an integer vector giving the configuration parameters for
    starting the CUDA SDK. Currently this must be the number \code{0L} as
    stated in the CUDA documentation}
}
\value{
  This either returns \code{0L}, indicating success, or raises an error.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/group__CUDA__INITIALIZE.html#group__CUDA__INITIALIZE_1g0a2f1517e1bd8502c7194c3a8c134bc3}
}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{createContext}} and   \code{\link{cuGetContext}}
  
  \code{\link{.cuda}}
}
%\examples{}
\keyword{programming}
