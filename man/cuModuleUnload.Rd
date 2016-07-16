\name{cuModuleUnload}
\alias{cuModuleUnload}
\title{Unloads a module}
\description{ Unloads a module \code{hmod} from the current context.}
\usage{cuModuleUnload(hmod)}
\arguments{
  \item{hmod}{Module to unload}
}

\seealso{\code{\link{cuModuleGetFunction}}
\code{\link{cuModuleGetGlobal}}
\code{\link{cuModuleGetTexRef}}
\code{\link{cuModuleLoad}}
\code{\link{cuModuleLoadData}}
\code{\link{cuModuleLoadDataEx}}
\code{\link{cuModuleLoadFatBinary}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
