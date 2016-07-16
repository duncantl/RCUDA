\name{cuDeviceGetAttribute}
\alias{cuDeviceGetAttribute}
\title{Returns information about the device}
\description{ Returns  the integer value of the attribute \code{attrib} on device
 \code{dev}. The supported attributes are:
 - \code{CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK}: Maximum number of threads per
   block;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X}: Maximum x-dimension of a block;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y}: Maximum y-dimension of a block;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z}: Maximum z-dimension of a block;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X}: Maximum x-dimension of a grid;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y}: Maximum y-dimension of a grid;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z}: Maximum z-dimension of a grid;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK}: Maximum amount of
   shared memory available to a thread block in bytes; this amount is shared
   by all thread blocks simultaneously resident on a multiprocessor;
 - \code{CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY}: Memory available on device for
   __constant__ variables in a CUDA C kernel in bytes;
 - \code{CU_DEVICE_ATTRIBUTE_WARP_SIZE}: Warp size in threads;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_PITCH}: Maximum pitch in bytes allowed by the
   memory copy functions that involve memory regions allocated through
   \code{cuMemAllocPitch}();
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}1D_WIDTH: Maximum 1D 
  texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}1D_LINEAR_WIDTH: Maximum width
  for a 1D texture bound to linear memory;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}1D_MIPMAPPED_WIDTH: Maximum 
  mipmapped 1D texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_WIDTH: Maximum 2D 
  texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_HEIGHT: Maximum 2D 
  texture height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LINEAR_WIDTH: Maximum width
  for a 2D texture bound to linear memory;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LINEAR_HEIGHT: Maximum height
  for a 2D texture bound to linear memory;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LINEAR_PITCH: Maximum pitch
  in bytes for a 2D texture bound to linear memory;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_MIPMAPPED_WIDTH: Maximum 
  mipmapped 2D texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_MIPMAPPED_HEIGHT: Maximum
  mipmapped 2D texture height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_WIDTH: Maximum 3D 
  texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_HEIGHT: Maximum 3D 
  texture height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_DEPTH: Maximum 3D 
  texture depth;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_WIDTH_ALTERNATE: 
  Alternate maximum 3D texture width, 0 if no alternate
  maximum 3D texture size is supported;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_HEIGHT_ALTERNATE: 
  Alternate maximum 3D texture height, 0 if no alternate
  maximum 3D texture size is supported;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}3D_DEPTH_ALTERNATE: 
  Alternate maximum 3D texture depth, 0 if no alternate
  maximum 3D texture size is supported;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH}:
  Maximum cubemap texture width or height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}1D_LAYERED_WIDTH: 
  Maximum 1D layered texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}1D_LAYERED_LAYERS: 
   Maximum layers in a 1D layered texture;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LAYERED_WIDTH: 
  Maximum 2D layered texture width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LAYERED_HEIGHT: 
   Maximum 2D layered texture height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE}2D_LAYERED_LAYERS: 
   Maximum layers in a 2D layered texture;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH}: 
   Maximum cubemap layered texture width or height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS}: 
   Maximum layers in a cubemap layered texture;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}1D_WIDTH:
   Maximum 1D surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}2D_WIDTH:
   Maximum 2D surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}2D_HEIGHT:
   Maximum 2D surface height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}3D_WIDTH:
   Maximum 3D surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}3D_HEIGHT:
   Maximum 3D surface height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}3D_DEPTH:
   Maximum 3D surface depth;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}1D_LAYERED_WIDTH:
   Maximum 1D layered surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}1D_LAYERED_LAYERS:
   Maximum layers in a 1D layered surface;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}2D_LAYERED_WIDTH:
   Maximum 2D layered surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}2D_LAYERED_HEIGHT:
   Maximum 2D layered surface height;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE}2D_LAYERED_LAYERS:
   Maximum layers in a 2D layered surface;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH}:
   Maximum cubemap surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH}:
   Maximum cubemap layered surface width;
 - \code{CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS}:
   Maximum layers in a cubemap layered surface;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK}: Maximum number of 32-bit
   registers available to a thread block; this number is shared by all thread
   blocks simultaneously resident on a multiprocessor;
 - \code{CU_DEVICE_ATTRIBUTE_CLOCK_RATE}: Peak clock frequency in kilohertz;
 - \code{CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT}: Alignment requirement; texture
   base addresses aligned to \code{textureAlign} bytes do not need an offset
   applied to texture fetches;
 - \code{CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT}: Pitch alignment requirement
   for 2D texture references bound to pitched memory;
 - \code{CU_DEVICE_ATTRIBUTE_GPU_OVERLAP}: 1 if the device can concurrently copy
   memory between host and device while executing a kernel, or 0 if not;
 - \code{CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT}: Number of multiprocessors on
   the device;
 - \code{CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT}: 1 if there is a run time limit
   for kernels executed on the device, or 0 if not;
 - \code{CU_DEVICE_ATTRIBUTE_INTEGRATED}: 1 if the device is integrated with the
   memory subsystem, or 0 if not;
 - \code{CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY}: 1 if the device can map host
   memory into the CUDA address space, or 0 if not;
 - \code{CU_DEVICE_ATTRIBUTE_COMPUTE_MODE}: Compute mode that device is currently
   in. Available modes are as follows:
   - \code{CU_COMPUTEMODE_DEFAULT}: Default mode - Device is not restricted and
     can have multiple CUDA contexts present at a single time.
   - \code{CU_COMPUTEMODE_EXCLUSIVE}: Compute-exclusive mode - Device can have
     only one CUDA context present on it at a time.
   - \code{CU_COMPUTEMODE_PROHIBITED}: Compute-prohibited mode - Device is
     prohibited from creating new CUDA contexts.
   - \code{CU_COMPUTEMODE_EXCLUSIVE_PROCESS}:  Compute-exclusive-process mode - Device
     can have only one context used by a single process at a time.
 - \code{CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS}: 1 if the device supports
   executing multiple kernels within the same context simultaneously, or 0 if
   not. It is not guaranteed that multiple kernels will be resident
   on the device concurrently so this feature should not be relied upon for
   correctness;
 - \code{CU_DEVICE_ATTRIBUTE_ECC_ENABLED}: 1 if error correction is enabled on the
    device, 0 if error correction is disabled or not supported by the device;
 - \code{CU_DEVICE_ATTRIBUTE_PCI_BUS_ID}: PCI bus identifier of the device;
 - \code{CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID}: PCI device (also known as slot) identifier
   of the device;
 - \code{CU_DEVICE_ATTRIBUTE_TCC_DRIVER}: 1 if the device is using a TCC driver. TCC
    is only available on Tesla hardware running Windows Vista or later;
 - \code{CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE}: Peak memory clock frequency in kilohertz;
 - \code{CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH}: Global memory bus width in bits;
 - \code{CU_DEVICE_ATTRIBUTE_L}2_CACHE_SIZE: Size of L2 cache in bytes. 0 if the device doesn't have L2 cache;
 - \code{CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR}: Maximum resident threads per multiprocessor;
 - \code{CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING}: 1 if the device shares a unified address space with 
   the host, or 0 if not;
 - \code{CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR}: Major compute capability version number;
 - \code{CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR}: Minor compute capability version number;}
\usage{cuDeviceGetAttribute(attrib, dev)}
\arguments{
  \item{attrib}{Device attribute to query}
  \item{dev}{Device handle}
}
\value{pi}
\seealso{\code{\link{cuDeviceGetCount}}
\code{\link{cuDeviceGetName}}
\code{\link{cuDeviceGet}}
\code{\link{cuDeviceTotalMem}}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}}
\keyword{programming}
\concept{GPU}
