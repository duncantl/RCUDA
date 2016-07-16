\name{cudaGraphicsUnregisterResource}
\alias{cudaGraphicsUnregisterResource}
\title{Unregisters a graphics resource for access by CUDA}
\description{ Unregisters the graphics resource \code{resource} so it is not accessible by
 CUDA unless registered again.}
\usage{cudaGraphicsUnregisterResource(resource)}
\arguments{
  \item{resource}{Resource to unregister}
}

\seealso{\code{cudaGraphicsD3D9RegisterResource}
\code{cudaGraphicsD3D10RegisterResource}
\code{cudaGraphicsD3D11RegisterResource}
\code{cudaGraphicsGLRegisterBuffer}
\code{cudaGraphicsGLRegisterImage}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
