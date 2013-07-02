\name{copyFromDevice}
\alias{cudaAlloc}
\alias{cudaMalloc}
\alias{copyFromDevice}
\alias{copyToDevice}
\alias{[,cudaFloatArray,missing,missing-method}
\alias{[,cudaIntArray,missing,missing-method}
\alias{[,cudaFloatArray,numeric,missing-method}
\alias{[,cudaIntArray,numeric,missing-method}
\alias{[,cudaPtrWithLength,logical,missing-method}
\alias{[<-,cudaFloatArray,missing,missing-method}
\alias{[<-,cudaIntArray,missing,missing-method}
\alias{[<-,cudaPtrWithLength,missing,missing-method}

\alias{copyFromDevice,cudaFloatArray-method}
\alias{copyFromDevice,cudaIntArray-method}
\alias{copyFromDevice,ANY-method}

\title{Copy data betwen R and GPU}
\description{
  These functions perform the (potentially) necessary copying of data
  between the host and the GPU device.
  The functions \code{codeToDevice} and \code{copyFromDevice}
  are the explicit functions. We can use R's subsetting
  to copy the elements with \code{ref[]} and \code{ref[] = x}.
}
\usage{
copyFromDevice(obj, nels, type)
copyToDevice(obj, to = cudaMalloc(length(obj), elType = elType),
              elType = typeof(obj)) 
cudaMalloc(numEls, sizeof = 4L, elType = NA) 
}
\arguments{
  \item{obj}{the R object to be copied to the GPU or the reference to
    the GPU memory that is to be copied back to R}
  \item{nels,numEls}{the number of elements to be copied or to be allocated}
  \item{type}{the type of the elements being copied}
  \item{elType}{the name of the R/GPU type to be allocated}
  \item{sizeof}{the size of the element in the array/vector on the GPU to be allocated}
  \item{to}{a reference to space on the GPU to store the data being
    copied from R to the GPU}
}
\value{

  \code{cudaMalloc} returns  a generic pointer to memory on the  GPU.

  \code{copyToDevice} returns an object that knows both the type and the
  number of elements of the array and so can retrieve this from the GPU.

  \code{copyFromDevice} returns the R vector corresponding to the
  data on the GPU.
}
%\references{}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{.cuda}}
}
\examples{
if(getNumDevices() > 0) {

 cuGetContext()

 N = 1e5
 x = rnorm(N)

 cx = copyToDevice(x)
 length(cx[])
   # or explicitly with
 vals = copyFromDevice(cx)
 length(vals)

 i = sample(1:N, 100)
   # subsetting on the GPU
 cx[i]
}
}
\keyword{programming}
\keyword{interface}
