\name{cuFuncGetAttribute}
\alias{cuFuncGetAttribute}
\title{Returns information about a function}
\description{ Returns  the integer value of the attribute \code{attrib} on the kernel
 given by \code{hfunc}. The supported attributes are:
 - \code{CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK}: The maximum number of threads
   per block, beyond which a launch of the function would fail. This number
   depends on both the function and the device on which the function is
   currently loaded.
 - \code{CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES}: The size in bytes of
   statically-allocated shared memory per block required by this function.
   This does not include dynamically-allocated shared memory requested by
   the user at runtime.
 - \code{CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES}: The size in bytes of user-allocated
   constant memory required by this function.
 - \code{CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES}: The size in bytes of local memory
   used by each thread of this function.
 - \code{CU_FUNC_ATTRIBUTE_NUM_REGS}: The number of registers used by each thread
   of this function.
 - \code{CU_FUNC_ATTRIBUTE_PTX_VERSION}: The PTX virtual architecture version for
   which the function was compiled. This value is the major PTX version * 10
   + the minor PTX version, so a PTX version 1.3 function would return the
   value 13. Note that this may return the undefined value of 0 for cubins
   compiled prior to CUDA 3.0.
 - \code{CU_FUNC_ATTRIBUTE_BINARY_VERSION}: The binary architecture version for
   which the function was compiled. This value is the major binary
   version * 10 + the minor binary version, so a binary version 1.3 function
   would return the value 13. Note that this will return a value of 10 for
   legacy cubins that do not have a properly-encoded binary architecture
   version.}
\usage{cuFuncGetAttribute(attrib, hfunc)}
\arguments{
  \item{attrib}{Attribute requested}
  \item{hfunc}{Function to query attribute of}
}
\value{pi}
\seealso{\code{\link{cuCtxGetCacheConfig}}
\code{\link{cuCtxSetCacheConfig}}
\code{\link{cuFuncSetCacheConfig}}
\code{cuLaunchKernel}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
