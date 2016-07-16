\name{cuCtxGetLimit}
\alias{cuCtxGetLimit}
\title{Returns resource limits}
\description{ Returns  the current size of \code{limit}.  The supported
 \code{CUlimit} values are:
 - \code{CU_LIMIT_STACK_SIZE}: stack size in bytes of each GPU thread.
 - \code{CU_LIMIT_PRINTF_FIFO_SIZE}: size in bytes of the FIFO used by the
   \code{printf}() device system call.
 - \code{CU_LIMIT_MALLOC_HEAP_SIZE}: size in bytes of the heap used by the
   \code{malloc}() and \code{free}() device system calls.
 - \code{CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH}: maximum grid depth at which a thread
   can issue the device runtime call \code{cudaDeviceSynchronize}() to wait on
   child grid launches to complete.
 - \code{CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT}: maximum number of outstanding
   device runtime launches that can be made from this context.}
\usage{cuCtxGetLimit(limit)}
\arguments{
  \item{limit}{Limit to query}
}
\value{pvalue}
\seealso{\code{\link{cuCtxCreate}}
\code{\link{cuCtxDestroy}}
\code{\link{cuCtxGetApiVersion}}
\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxGetDevice}}
\code{\link{cuCtxPopCurrent}}
\code{\link{cuCtxPushCurrent}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuCtxSetLimit}}
\code{\link{cuCtxSynchronize}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
