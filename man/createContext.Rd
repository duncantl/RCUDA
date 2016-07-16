\name{createContext}
\alias{createContext}
\alias{cuGetContext}
\alias{CU_CTX_SCHED_AUTO}
\alias{CU_CTX_SCHED_SPIN}
\alias{CU_CTX_SCHED_YIELD}
\alias{CU_CTX_SCHED_BLOCKING_SYNC}
\alias{CU_CTX_BLOCKING_SYNC}
\alias{CU_CTX_SCHED_MASK}
\alias{CU_CTX_MAP_HOST}
\alias{CU_CTX_LMEM_RESIZE_TO_MAX}
\alias{CU_CTX_FLAGS_MASK}
\title{Create or query current context}
\description{
   These  functions query or establish a context for the computations on
   a GPU. 
}
\usage{
createContext(flags = 0L, device = 1L)
cuGetContext(create = TRUE, ..., asContext = TRUE)
}
\arguments{
  \item{flags}{an integer vector specifying the configuration options
    for creating the context.}
  \item{device}{the identity of the device for which to create the context.}
  \item{create}{a logical value that controls whether we create a context
    if none is established.}
  \item{\dots}{additional arguments passed to \code{createContext}}
  \item{asContext}{a logical value currently ignored.}
}
\value{
  Both functions return an object of class \code{CUcontext}.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/group__CUDA__CTX.html#axzz4EXlYl4ti}
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
