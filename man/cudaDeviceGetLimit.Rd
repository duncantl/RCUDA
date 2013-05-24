\name{cudaDeviceGetLimit}
\alias{cudaDeviceGetLimit}
\title{Returns resource limits}
\description{ Returns  the current size of \code{limit}.  The supported
 \code{cudaLimit} values are:
 - \code{cudaLimitStackSize}: stack size in bytes of each GPU thread;
 - \code{cudaLimitPrintfFifoSize}: size in bytes of the shared FIFO used by the
   \code{printf}() and \code{fprintf}() device system calls.
 - \code{cudaLimitMallocHeapSize}: size in bytes of the heap used by the
   \code{malloc}() and \code{free}() device system calls;
 - \code{cudaLimitDevRuntimeSyncDepth}: maximum grid depth at which a
   thread can isssue the device runtime call \code{cudaDeviceSynchronize}()
   to wait on child grid launches to complete.
 - \code{cudaLimitDevRuntimePendingLaunchCount}: maximum number of outstanding
   device runtime launches.}
\usage{cudaDeviceGetLimit(limit)}
\arguments{
  \item{limit}{Limit to query}
}
\value{pValue}
\seealso{\code{\link{cudaDeviceSetLimit}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
