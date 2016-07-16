\name{cuCtxSynchronize}
\alias{cuCtxSynchronize}
\title{Block for a context's tasks to complete}
\description{ Blocks until the device has completed all preceding requested tasks.
 \code{cuCtxSynchronize}() returns an error if one of the preceding tasks failed.
 If the context was created with the \code{CU_CTX_SCHED_BLOCKING_SYNC} flag, the 
 CPU thread will block until the GPU context has finished its work.}
\usage{cuCtxSynchronize()}



\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
