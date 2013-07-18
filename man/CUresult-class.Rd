\name{CUresult-class}
\Rdversion{1.1}
\docType{class}
\alias{CUresult-class}

\title{Class \code{"CUresult"}}
\description{
  Most of the CUDA routines return their information
  via pointers and explicitly return the status of the
  request as an enumerated constant. This is a CUresult.
  This is an integer value in R along with the symbolic
  name as the names vector (of length 1). This is a
  CUresult object in R.

  Some CUDA routines just return the status when there is no
  information to return. These are typically set commands that
  don't query information.  In these cases, the corresponding
  R functions return the status. However, if that value is not 0,
  the functions raise an error. The class of the error
  corresponds to the symbolic name of the  status value.
  This allows us to handle the different errors with \code{\link[base]{tryCatch}}.
  All possible values can be obtained with \code{RCUDA:::CUresultValues}.

  For routines that return information via their arguments, the
  corresponding R  function  checks the return value to see if it
  is a CUresult (\code{cudaResult_t}) and raises an error if it is.
  This allows the R function to check the status but still return
  the values if there is no error.
}
\section{Objects from the Class}{
%Objects can be created by calls of the form \code{new("CUresult",  ...)}.
Objects of class \code{CUresult} are typically generated in the C code
and not within R code.
}
\section{Slots}{
  \describe{
    \item{\code{.Data}:}{Object of class \code{"integer"}. The possible
  values can be obtained from \code{RCUDA:::CUresultValues}}
    \item{\code{names}:}{Object of class \code{"character"}}
  }
}
\section{Extends}{
Class \code{"\linkS4class{EnumValue}"}, directly.
Class \code{"\linkS4class{SymbolicConstant}"}, by class "EnumValue", distance 2.
Class \code{"\linkS4class{EnumerationValue}"}, by class "EnumValue", distance 2.
Class \code{"\linkS4class{integer}"}, by class "EnumValue", distance 3.
Class \code{"\linkS4class{numeric}"}, by class "EnumValue", distance 4.
Class \code{"\linkS4class{vector}"}, by class "EnumValue", distance 4.
Class \code{"\linkS4class{data.frameRowLabels}"}, by class "EnumValue", distance 4.
}
\section{Methods}{
No methods defined with class "CUresult" in the signature.
}
\references{
  \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}.
  Specifically \url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html#group__CUDA__TYPES_1gc6c391505e117393cc2558fff6bfc2e9}
}
\author{
Duncan Temple Lang
}

\seealso{
 \code{RCUDA:::CUresultValues}
}
\examples{
showClass("CUresult")
}
\keyword{classes}
