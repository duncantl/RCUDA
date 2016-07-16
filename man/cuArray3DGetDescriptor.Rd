\name{cuArray3DGetDescriptor}
\alias{cuArray3DGetDescriptor}
\title{Get a 3D CUDA array descriptor}
\description{ Returns  a descriptor containing information on the
 format and dimensions of the CUDA array \code{hArray}. It is useful for
 subroutines that have been passed a CUDA array, but need to know the CUDA
 array parameters for validation or other purposes.}
\usage{cuArray3DGetDescriptor(hArray)}
\arguments{
  \item{hArray}{3D array to get descriptor of}
}
\value{pArrayDescriptor}
\seealso{\code{\link{cuArray3DCreate}}
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
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
