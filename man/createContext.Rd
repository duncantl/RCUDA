\name{createContext}
\alias{createContext}
\alias{cuGetContext}
\title{Create or query current context}
\description{
   These  functions query or establish a context for the computations on
   a GPU. 
}
\usage{
createContext(flags = 0L, device = 1L)
cuGetContext(create = TRUE)
}
\arguments{
  \item{flags}{an integer vector specifying the configuration options
    for creating the context.}
  \item{device}{the identity of the device for which to create the context.}
  \item{create}{a logical value that controls whether we create a context
    if none is established.}
}
\value{
  Both functions return an object of class \code{CUcontext}.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html#group__CUDA__CTX}
}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{.cuda}}
}
\examples{
if(getNumDevices() > 0) {
   ctx = createContext()
   cuGetContext()
}
}
\keyword{programming}
