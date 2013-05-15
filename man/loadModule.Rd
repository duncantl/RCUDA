\name{loadModule}
\alias{loadModule}
\alias{getFunction}

\alias{$,CUmodule-method}
\alias{[[,CUmodule,character,missing-method}

\title{Load a GPU module and access its Routines}
\description{
  These functions load a module and allow us to get a reference
  to any of the named functions/routines it contains.
}
\usage{
loadModule(filename, ctx = cuGetContext(TRUE), ...)
getFunction(module, name) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{the name of the file containing the GPU module. This
    can be in PTX, cubin or fatbin format. It is important that the code
    be compiled correctly for the appropriate architecture/GPU device.
    If not, an error is raised.}
  \item{ctx}{the context into which to load the module. If none has been
  created, this creates  default contet that is used for this and
  subsequent computations.}
 \item{\dots}{additional parameters for methods}
 \item{module}{the module object returned by \code{loadModule} in which
  we will find the named function}
\item{name}{the name of the function to find in the module.
   It is imperative that the kernel we want be compiled with the
   declaration \code{extern "C"} so that its name is not mangled.}
}
\value{
  \code{loadModule} returns an reference to the C object
  and is of class \code{CUmodule} in R.

  \code{getFunction}, if it succeeds, returns an object of class
  \code{CUfunction}   and is a reference to the C data type representing
  this routine.
}
\references{
}
\author{Duncan Temple Lang}

\seealso{
\code{\link{.cuda}}
}
%\examples{}
\keyword{programming}
\concept{parallel}
\concept{GPU}
