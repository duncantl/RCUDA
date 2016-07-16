\name{cuGraphicsUnregisterResource}
\alias{cuGraphicsUnregisterResource}
\title{Unregisters a graphics resource for access by CUDA}
\description{ Unregisters the graphics resource \code{resource} so it is not accessible by
 CUDA unless registered again.}
\usage{cuGraphicsUnregisterResource(resource)}
\arguments{
  \item{resource}{Resource to unregister}
}

\seealso{\code{cuGraphicsD3D9RegisterResource}
\code{cuGraphicsD3D10RegisterResource}
\code{cuGraphicsD3D11RegisterResource}
\code{cuGraphicsGLRegisterBuffer}
\code{cuGraphicsGLRegisterImage}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
