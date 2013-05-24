\name{cudaDeviceGetAttribute}
\alias{cudaDeviceGetAttribute}
\title{Returns information about the device}
\description{ Returns  the integer value of the attribute \code{attr} on device
 \code{device}. The supported attributes are:
 - \code{cudaDevAttrMaxThreadsPerBlock}: Maximum number of threads per block;
 - \code{cudaDevAttrMaxBlockDimX}: Maximum x-dimension of a block;
 - \code{cudaDevAttrMaxBlockDimY}: Maximum y-dimension of a block;
 - \code{cudaDevAttrMaxBlockDimZ}: Maximum z-dimension of a block;
 - \code{cudaDevAttrMaxGridDimX}: Maximum x-dimension of a grid;
 - \code{cudaDevAttrMaxGridDimY}: Maximum y-dimension of a grid;
 - \code{cudaDevAttrMaxGridDimZ}: Maximum z-dimension of a grid;
 - \code{cudaDevAttrMaxSharedMemoryPerBlock}: Maximum amount of shared memory
   available to a thread block in bytes; this amount is shared by all 
   thread blocks simultaneously resident on a multiprocessor;
 - \code{cudaDevAttrTotalConstantMemory}: Memory available on device for
   __constant__ variables in a CUDA C kernel in bytes;
 - \code{cudaDevAttrWarpSize}: Warp size in threads;
 - \code{cudaDevAttrMaxPitch}: Maximum pitch in bytes allowed by the memory copy
   functions that involve memory regions allocated through \code{cudaMallocPitch}();
 - \code{cudaDevAttrMaxTexture}1DWidth: Maximum 1D texture width;
 - \code{cudaDevAttrMaxTexture}1DLinearWidth: Maximum width for a 1D texture bound
   to linear memory;
 - \code{cudaDevAttrMaxTexture}1DMipmappedWidth: Maximum mipmapped 1D texture width;
 - \code{cudaDevAttrMaxTexture}2DWidth: Maximum 2D texture width;
 - \code{cudaDevAttrMaxTexture}2DHeight: Maximum 2D texture height;
 - \code{cudaDevAttrMaxTexture}2DLinearWidth: Maximum width for a 2D texture
   bound to linear memory;
 - \code{cudaDevAttrMaxTexture}2DLinearHeight: Maximum height for a 2D texture
   bound to linear memory;
 - \code{cudaDevAttrMaxTexture}2DLinearPitch: Maximum pitch in bytes for a 2D
   texture bound to linear memory;
 - \code{cudaDevAttrMaxTexture}2DMipmappedWidth: Maximum mipmapped 2D texture
   width;
 - \code{cudaDevAttrMaxTexture}2DMipmappedHeight: Maximum mipmapped 2D texture
   height;
 - \code{cudaDevAttrMaxTexture}3DWidth: Maximum 3D texture width;
 - \code{cudaDevAttrMaxTexture}3DHeight: Maximum 3D texture height;
 - \code{cudaDevAttrMaxTexture}3DDepth: Maximum 3D texture depth;
 - \code{cudaDevAttrMaxTexture}3DWidthAlt: Alternate maximum 3D texture width,
   0 if no alternate maximum 3D texture size is supported;
 - \code{cudaDevAttrMaxTexture}3DHeightAlt: Alternate maximum 3D texture height,
   0 if no alternate maximum 3D texture size is supported;
 - \code{cudaDevAttrMaxTexture}3DDepthAlt: Alternate maximum 3D texture depth,
   0 if no alternate maximum 3D texture size is supported;
 - \code{cudaDevAttrMaxTextureCubemapWidth}: Maximum cubemap texture width or
   height;
 - \code{cudaDevAttrMaxTexture}1DLayeredWidth: Maximum 1D layered texture width;
 - \code{cudaDevAttrMaxTexture}1DLayeredLayers: Maximum layers in a 1D layered
   texture;
 - \code{cudaDevAttrMaxTexture}2DLayeredWidth: Maximum 2D layered texture width;
 - \code{cudaDevAttrMaxTexture}2DLayeredHeight: Maximum 2D layered texture height;
 - \code{cudaDevAttrMaxTexture}2DLayeredLayers: Maximum layers in a 2D layered
   texture;
 - \code{cudaDevAttrMaxTextureCubemapLayeredWidth}: Maximum cubemap layered
   texture width or height;
 - \code{cudaDevAttrMaxTextureCubemapLayeredLayers}: Maximum layers in a cubemap
   layered texture;
 - \code{cudaDevAttrMaxSurface}1DWidth: Maximum 1D surface width;
 - \code{cudaDevAttrMaxSurface}2DWidth: Maximum 2D surface width;
 - \code{cudaDevAttrMaxSurface}2DHeight: Maximum 2D surface height;
 - \code{cudaDevAttrMaxSurface}3DWidth: Maximum 3D surface width;
 - \code{cudaDevAttrMaxSurface}3DHeight: Maximum 3D surface height;
 - \code{cudaDevAttrMaxSurface}3DDepth: Maximum 3D surface depth;
 - \code{cudaDevAttrMaxSurface}1DLayeredWidth: Maximum 1D layered surface width;
 - \code{cudaDevAttrMaxSurface}1DLayeredLayers: Maximum layers in a 1D layered
   surface;
 - \code{cudaDevAttrMaxSurface}2DLayeredWidth: Maximum 2D layered surface width;
 - \code{cudaDevAttrMaxSurface}2DLayeredHeight: Maximum 2D layered surface height;
 - \code{cudaDevAttrMaxSurface}2DLayeredLayers: Maximum layers in a 2D layered
   surface;
 - \code{cudaDevAttrMaxSurfaceCubemapWidth}: Maximum cubemap surface width;
 - \code{cudaDevAttrMaxSurfaceCubemapLayeredWidth}: Maximum cubemap layered
   surface width;
 - \code{cudaDevAttrMaxSurfaceCubemapLayeredLayers}: Maximum layers in a cubemap
   layered surface;
 - \code{cudaDevAttrMaxRegistersPerBlock}: Maximum number of 32-bit registers 
   available to a thread block; this number is shared by all thread blocks
   simultaneously resident on a multiprocessor;
 - \code{cudaDevAttrClockRate}: Peak clock frequency in kilohertz;
 - \code{cudaDevAttrTextureAlignment}: Alignment requirement; texture base
   addresses aligned to \code{textureAlign} bytes do not need an offset applied
   to texture fetches;
 - \code{cudaDevAttrTexturePitchAlignment}: Pitch alignment requirement for 2D
   texture references bound to pitched memory;
 - \code{cudaDevAttrGpuOverlap}: 1 if the device can concurrently copy memory
   between host and device while executing a kernel, or 0 if not;
 - \code{cudaDevAttrMultiProcessorCount}: Number of multiprocessors on the device;
 - \code{cudaDevAttrKernelExecTimeout}: 1 if there is a run time limit for kernels
   executed on the device, or 0 if not;
 - \code{cudaDevAttrIntegrated}: 1 if the device is integrated with the memory
   subsystem, or 0 if not;
 - \code{cudaDevAttrCanMapHostMemory}: 1 if the device can map host memory into
   the CUDA address space, or 0 if not;
 - \code{cudaDevAttrComputeMode}: Compute mode is the compute mode that the device
   is currently in. Available modes are as follows:
   - \code{cudaComputeModeDefault}: Default mode - Device is not restricted and
     multiple threads can use \code{cudaSetDevice}() with this device.
   - \code{cudaComputeModeExclusive}: Compute-exclusive mode - Only one thread will
     be able to use \code{cudaSetDevice}() with this device.
   - \code{cudaComputeModeProhibited}: Compute-prohibited mode - No threads can use
     \code{cudaSetDevice}() with this device.
   - \code{cudaComputeModeExclusiveProcess}: Compute-exclusive-process mode - Many 
     threads in one process will be able to use \code{cudaSetDevice}() with this
     device.
 - \code{cudaDevAttrConcurrentKernels}: 1 if the device supports executing
   multiple kernels within the same context simultaneously, or 0 if
   not. It is not guaranteed that multiple kernels will be resident on the
   device concurrently so this feature should not be relied upon for
   correctness;
 - \code{cudaDevAttrEccEnabled}: 1 if error correction is enabled on the device,
   0 if error correction is disabled or not supported by the device;
 - \code{cudaDevAttrPciBusId}: PCI bus identifier of the device;
 - \code{cudaDevAttrPciDeviceId}: PCI device (also known as slot) identifier of
   the device;
 - \code{cudaDevAttrTccDriver}: 1 if the device is using a TCC driver. TCC is only
   available on Tesla hardware running Windows Vista or later;
 - \code{cudaDevAttrMemoryClockRate}: Peak memory clock frequency in kilohertz;
 - \code{cudaDevAttrGlobalMemoryBusWidth}: Global memory bus width in bits;
 - \code{cudaDevAttrL}2CacheSize: Size of L2 cache in bytes. 0 if the device
   doesn't have L2 cache;
 - \code{cudaDevAttrMaxThreadsPerMultiProcessor}: Maximum resident threads per 
   multiprocessor;
 - \code{cudaDevAttrUnifiedAddressing}: 1 if the device shares a unified address
   space with the host, or 0 if not;
 - \code{cudaDevAttrComputeCapabilityMajor}: Major compute capability version
   number;
 - \code{cudaDevAttrComputeCapabilityMinor}: Minor compute capability version
   number;}
\usage{cudaDeviceGetAttribute(attr, device)}
\arguments{
  \item{attr}{Device attribute to query}
  \item{device}{Device number to query}
}
\value{value}
\seealso{\code{cudaGetDeviceCount}
\code{\link{cudaGetDevice}}
\code{cudaSetDevice}
\code{\link{cudaChooseDevice}}
\code{cudaGetDeviceProperties}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
