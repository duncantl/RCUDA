\name{cuPointerGetAttribute}
\alias{cuPointerGetAttribute}
\title{Returns information about a pointer}
\description{      If the current \code{CUcontext} does not support unified virtual 
      addressing then \code{CUDA_ERROR_INVALID_CONTEXT} is returned.
    
 - \code{CU_POINTER_ATTRIBUTE_DEVICE_POINTER}:
 
      Returns  the device pointer value through which
      \code{ptr} may be accessed by kernels running in the current 
      \code{CUcontext}.
      The type of \code{data} must be CUdeviceptr *.
 
      If there exists no device pointer value through which
      kernels running in the current \code{CUcontext} may access
      \code{ptr} then \code{CUDA_ERROR_INVALID_VALUE} is returned.
 
      If there is no current \code{CUcontext} then 
      \code{CUDA_ERROR_INVALID_CONTEXT} is returned.
      
      Except in the exceptional disjoint addressing cases discussed 
      below, the value returned  will equal the input 
      value \code{ptr}.
 
 - \code{CU_POINTER_ATTRIBUTE_HOST_POINTER}:
 
      Returns  the host pointer value through which 
      \code{ptr} may be accessed by by the host program.
      The type of \code{data} must be void **.
      If there exists no host pointer value through which
      the host program may directly access \code{ptr} then 
      \code{CUDA_ERROR_INVALID_VALUE} is returned.
 
      Except in the exceptional disjoint addressing cases discussed 
      below, the value returned  will equal the input 
      value \code{ptr}.}
\usage{cuPointerGetAttribute(data, attribute, ptr)}
\arguments{
  \item{data}{Returned pointer attribute value}
  \item{attribute}{Pointer attribute to query}
  \item{ptr}{Pointer}
}

\seealso{\code{cuMemAlloc}
\code{cuMemFree}
\code{cuMemAllocHost}
\code{cuMemFreeHost}
\code{cuMemHostAlloc}
\code{cuMemHostRegister}
\code{cuMemHostUnregister}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
