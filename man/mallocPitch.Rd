\name{mallocPitch}
\alias{mallocPitch}
\alias{[<-,PitchMemory2D}
\title{A higher-level interface to cudaMallocPitch}
\description{
  \code{mallocPitch} is similar to \code{cudaMallocPitch}
  for allocating memory for 2-dimensionsal structures, i.e. matrices.
  Unlike \code{cudaMallocPitch}, this function takes the name of the
  element  type and determines the number of bytes of each element.
  More than this, it returns an object that is similar to
  what \code{cudaMallocPitch} returns, but contains more information.
  This allows us to directly assign an R object directly to the
  allocated memory without having to explicitly call
  \code{\link{cudaMemcpy2D}}.

  One has to keep in mind that R matrices are stored in column order
  but the Pitch mechanism is more focused on rows in CUDA.
  
}
\usage{
mallocPitch(width, height, elType = NA)
}
\arguments{
  \item{width}{the number of columns in the 2D object}
  \item{height}{the number of rows in the 2D object.}
  \item{elType}{the name of the element type of the array,
    e.g. \code{int}, \code{float}, etc.}
}
\value{
  \code{mallocPitch} returns a list with elements
  \item{devPtr}{a reference to the allocated memory on the GPU}
  \item{pitch}{the actual pitch value between the start of elements in
    consecutive rows.}
  \item{elType}{the value of \code{elType}}
  \item{elSize}{the number of bytes for a single element}
  \item{dim}{the dimension vector of the allocated space, i.e. \code{width} and
    \code{height}}

  This list has S3 class \code{PitchMemory2D}.
}
\references{
CUDA SDK e
}
\author{
Duncan Temple Lang
}

\seealso{
\code{\link{cudaMallocPitch}} and \code{\link{cudaMemcpy2D}}
}
\examples{
\dontrun{
  AB = matrix(rnorm(30 * 5), 30, 5)
  mem = mallocPitch( ncol(AB), nrow(AB), "float")
  mem[] = t(AB)
}
}
\keyword{programming}
\concept{GPU}
\concept{parallel programming}
