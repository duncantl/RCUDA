\name{convertToPtr}
\alias{convertToPtr}
\title{Convert an R object to a pointer for use with CUDA}
\description{
  This is (currently) a simple function that takes an
  R vector/matrix and returns  a pointer to the elements
  so that they can be used to copy the contents
  to a CUDA device.
  We specify the desired type of the individual elements.
  If this a \code{float}, we create a new array at the
  native level and arrange to free that when it is no longer referenced.
  For an integer or numeric vector, this returns the pointer to the
  actual elements in the R object.
}
\usage{
convertToPtr(value, type)
}
\arguments{
  \item{value}{the R vector}
  \item{type}{the name of the type of element we want}
}
\value{
  An external pointer object.
}
\author{
Duncan Temple Lang
}

\seealso{
  \code{\link{mallocPitch}} and the assignment method
  for \code{PitchMemory2}.
}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{GPU}
\concept{parallel programming}

