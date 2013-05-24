\name{cuArray3DCreate}
\alias{cuArray3DCreate}
\title{Creates a 3D CUDA array}
\description{ Creates a CUDA array according to the \code{CUDA_ARRAY}3D_DESCRIPTOR structure
 \code{pAllocateArray} and returns a handle to the new CUDA array .
 The \code{CUDA_ARRAY}3D_DESCRIPTOR is defined as:}
\usage{cuArray3DCreate(pAllocateArray)}
\arguments{
  \item{pAllocateArray}{3D array descriptor}
}
\value{pHandle}
\seealso{\code{\link{cuArray3DGetDescriptor}}
\code{\link{cuArrayCreate}}
\code{\link{cuArrayDestroy}}
\code{\link{cuArrayGetDescriptor}}
\code{cuMemAlloc}
\code{cuMemAllocHost}
\code{cuMemAllocPitch}
\code{cuMemcpy2D}
\code{cuMemcpy2DAsync}
\code{cuMemcpy2DUnaligned}
\code{cuMemcpy3D}
\code{cuMemcpy3DAsync}
\code{cuMemcpyAtoA}
\code{cuMemcpyAtoD}
\code{cuMemcpyAtoH}
\code{cuMemcpyAtoHAsync}
\code{cuMemcpyDtoA}
\code{cuMemcpyDtoD}
\code{cuMemcpyDtoDAsync}
\code{cuMemcpyDtoH}
\code{cuMemcpyDtoHAsync}
\code{cuMemcpyHtoA}
\code{cuMemcpyHtoAAsync}
\code{cuMemcpyHtoD}
\code{cuMemcpyHtoDAsync}
\code{cuMemFree}
\code{cuMemFreeHost}
\code{cuMemGetAddressRange}
\code{cuMemGetInfo}
\code{cuMemHostAlloc}
\code{cuMemHostGetDevicePointer}
\code{cuMemsetD2D8}
\code{cuMemsetD2D16}
\code{cuMemsetD2D32}
\code{cuMemsetD8}
\code{cuMemsetD16}
\code{cuMemsetD32}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
