\name{cudaMemInfo}
\alias{cudaMemInfo}
\title{Determine the memory on the active GPU}
\description{
  This function determines the total and free memory
  available on the current GPU.
}
\usage{
cudaMemInfo()
}
\value{
  A numeric vector of length 3 with elements
  giving the total number of bytes free, total number of available bytes
  and the percentage free.
}
\references{
}
\author{
Duncan Temple Lang
}
\seealso{

}
\examples{
 cuGetContext(TRUE)
 cudaMemInfo()[3]  # percentage free
 cudaMemInfo()[1:2]  # totals
}
\keyword{programming}
