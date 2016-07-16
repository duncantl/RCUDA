\name{nvcc}
\alias{nvcc}
\title{Compile CUDA code}
\description{
  This is a utility function to help users compile
  CUDA source code using the nvcc compiler.
  As such, it is just a front-end to calling nvcc.
}
\usage{
nvcc(file, out = swapExtension(file, target),
     target = "ptx", ..., .opts = list(...), .run = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{the name of the file to compile}
  \item{out}{the name of the output file. If this is missing, \code{file}
   is used with a different extension, taken from the \code{target}.}
  \item{target}{a string giving the name of the target format, one of \code{ptx},
    \code{cubin} or \code{fatbin}. }
  \item{\dots}{individual arguments to be passed to the \code{nvcc}
    compiler. These should be \code{name = value} pairs or if for flags
    that take no arguments, just the string.
  }
  \item{.opts}{an alternative way to specify arguments to \code{nvcc} as
    a single R object.}
  \item{.run}{a logical value that if \code{FALSE} causes the function
    to return the command but not run the call to \code{nvcc}.}
}

\value{
  If \code{.run} is \code{TRUE}, a character vector with the output from
  invoking the \code{nvcc} compiler.
  If there is an error, the character vector contains the output from
  \code{nvcc}.

  If \code{.run} is \code{FALSE}, a character vector with one element
  which is the command to run.
}
\references{
NVIDIA CUDA SDK documentation.
}
\author{
Duncan Temple Lang
}

%\seealso{}
\examples{
f = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")
nvcc(f, .run = FALSE)
nvcc(f, target = "fatbin", .run = FALSE)
nvcc(f, target = "cubin", .run = FALSE)
nvcc(f, "-use_fast_math", .run = FALSE)
nvcc(f, gencode = "arch=compute_10,code=sm_10", .run = FALSE)
}
\keyword{programming}

