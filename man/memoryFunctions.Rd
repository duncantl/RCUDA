\name{cuMemGetInfo}
\alias{cuMemGetInfo}
\alias{cuMemAlloc}
\alias{cuMemAllocPitch}
\alias{cuMemFree}
\alias{cuMemGetAddressRange}
\alias{cuMemAllocHost}
\alias{cuMemFreeHost}
\alias{cuMemHostAlloc}
\alias{cuMemHostGetDevicePointer}
\alias{cuMemHostGetFlags}
\alias{cuMemHostRegister}
\alias{cuMemHostUnregister}
\alias{cuMemcpy}
\alias{cuMemcpyPeer}
\alias{cuMemcpyHtoD}
\alias{cuMemcpyDtoH}
\alias{cuMemcpyDtoD}
\alias{cuMemcpyDtoA}
\alias{cuMemcpyAtoD}
\alias{cuMemcpyHtoA}
\alias{cuMemcpyAtoH}
\alias{cuMemcpyAtoA}
\alias{cuMemcpy2D}
\alias{cuMemcpy2DUnaligned}
\alias{cuMemcpy3D}
\alias{cuMemcpy3DPeer}
\alias{cuMemcpyAsync}
\alias{cuMemcpyPeerAsync}
\alias{cuMemcpyHtoDAsync}
\alias{cuMemcpyDtoHAsync}
\alias{cuMemcpyDtoDAsync}
\alias{cuMemcpyHtoAAsync}
\alias{cuMemcpyAtoHAsync}
\alias{cuMemcpy2DAsync}
\alias{cuMemcpy3DAsync}
\alias{cuMemcpy3DPeerAsync}
\alias{cuMemsetD8}
\alias{cuMemsetD16}
\alias{cuMemsetD32}
\alias{cuMemsetD2D8}
\alias{cuMemsetD2D16}
\alias{cuMemsetD2D32}
\alias{cuMemsetD8Async}
\alias{cuMemsetD16Async}
\alias{cuMemsetD32Async}
\alias{cuMemsetD2D8Async}
\alias{cuMemsetD2D16Async}
\alias{cuMemsetD2D32Async}
\alias{cudaMemcpy3D}
\alias{cudaMemcpy3DPeer}
\alias{cudaMemcpy3DAsync}
\alias{cudaMemcpy3DPeerAsync}
\alias{cudaMemGetInfo}
\alias{cudaMemcpy}
\alias{cudaMemcpyPeer}
\alias{cudaMemcpyToArray}
\alias{cudaMemcpyFromArray}
\alias{cudaMemcpyArrayToArray}
\alias{cudaMemcpy2D}
\alias{cudaMemcpy2DToArray}
\alias{cudaMemcpy2DFromArray}
\alias{cudaMemcpy2DArrayToArray}
\alias{cudaMemcpyToSymbol}
\alias{cudaMemcpyFromSymbol}
\alias{cudaMemcpyAsync}
\alias{cudaMemcpyPeerAsync}
\alias{cudaMemcpyToArrayAsync}
\alias{cudaMemcpyFromArrayAsync}
\alias{cudaMemcpy2DAsync}
\alias{cudaMemcpy2DToArrayAsync}
\alias{cudaMemcpy2DFromArrayAsync}
\alias{cudaMemcpyToSymbolAsync}
\alias{cudaMemcpyFromSymbolAsync}
\alias{cudaMemset}
\alias{cudaMemset2D}
\alias{cudaMemset3D}
\alias{cudaMemsetAsync}
\alias{cudaMemset2DAsync}
\alias{cudaMemset3DAsync}
\alias{cudaMemcpyDefault}
\alias{cudaMemcpyDeviceToDevice}
\alias{cudaMemcpyDeviceToHost}
\alias{cudaMemcpyHostToDevice}
\alias{cudaMemcpyHostToHost}
\title{Memory operations}
\description{cuMemGetInfo
Gets free and total memory
 Returns  and \code{*total} respectively, the free and total amount of
 memory available for allocation by the CUDA context, in bytes.

cuMemAlloc
Allocates device memory
 Allocates \code{bytesize} bytes of linear memory on the device and returns in
 \code{*dptr} a pointer to the allocated memory. The allocated memory is suitably
 aligned for any kind of variable. The memory is not cleared. If \code{bytesize}
 is 0, \code{cuMemAlloc}() returns \code{CUDA_ERROR_INVALID_VALUE}.

cuMemAllocPitch
Allocates pitched device memory
 Allocates at least \code{WidthInBytes} * \code{Height} bytes of linear memory on
 the device and returns  a pointer to the allocated memory. The
 function may pad the allocation to ensure that corresponding pointers in
 any given row will continue to meet the alignment requirements for
 coalescing as the address is updated from row to row. \code{ElementSizeBytes}
 specifies the size of the largest reads and writes that will be performed
 on the memory range. \code{ElementSizeBytes} may be 4, 8 or 16 (since coalesced
 memory transactions are not possible on other data sizes). If
 \code{ElementSizeBytes} is smaller than the actual read/write size of a kernel,
 the kernel will run correctly, but possibly at reduced speed. The pitch
 returned  by \code{cuMemAllocPitch}() is the width in bytes of the
 allocation. The intended usage of pitch is as a separate parameter of the
 allocation, used to compute addresses within the 2D array. Given the row
 and column of an array element of type \code{T}, the address is computed as:
 \verb{
   T* pElement = (T*)((char*)BaseAddress + Row * Pitch) + Column;
 }

cuMemFree
Frees device memory
 Frees the memory space pointed to by \code{dptr}, which must have been returned
 by a previous call to \code{cuMemAlloc}() or \code{cuMemAllocPitch}().

cuMemGetAddressRange
Get information on memory allocations
 Returns the base address  and size  of the
 allocation by \code{cuMemAlloc}() or \code{cuMemAllocPitch}() that contains the input
 pointer \code{dptr}. Both parameters \code{pbase} and \code{psize} are optional. If one
 of them is NULL, it is ignored.

cuMemAllocHost
Allocates page-locked host memory
 Allocates \code{bytesize} bytes of host memory that is page-locked and
 accessible to the device. The driver tracks the virtual memory ranges
 allocated with this function and automatically accelerates calls to
 functions such as \code{cuMemcpy}(). Since the memory can be accessed directly by
 the device, it can be read or written with much higher bandwidth than
 pageable memory obtained with functions such as \code{malloc}(). Allocating
 excessive amounts of memory with \code{cuMemAllocHost}() may degrade system
 performance, since it reduces the amount of memory available to the system
 for paging. As a result, this function is best used sparingly to allocate
 staging areas for data exchange between host and device.

cuMemFreeHost
Frees page-locked host memory
 Frees the memory space pointed to by \code{p}, which must have been returned by
 a previous call to \code{cuMemAllocHost}().

cuMemHostAlloc
Allocates page-locked host memory
 Allocates \code{bytesize} bytes of host memory that is page-locked and accessible
 to the device. The driver tracks the virtual memory ranges allocated with
 this function and automatically accelerates calls to functions such as
 \code{cuMemcpyHtoD}(). Since the memory can be accessed directly by the device,
 it can be read or written with much higher bandwidth than pageable memory
 obtained with functions such as \code{malloc}(). Allocating excessive amounts of
 pinned memory may degrade system performance, since it reduces the amount
 of memory available to the system for paging. As a result, this function is
 best used sparingly to allocate staging areas for data exchange between
 host and device.

cuMemHostGetDevicePointer
Passes back device pointer of mapped pinned memory
 Passes back the device pointer \code{pdptr} corresponding to the mapped, pinned
 host buffer \code{p} allocated by \code{cuMemHostAlloc}.

cuMemHostGetFlags
Passes back flags that were used for a pinned allocation
 Passes back the flags \code{pFlags} that were specified when allocating
 the pinned host buffer \code{p} allocated by \code{cuMemHostAlloc}.

cuMemHostRegister
Registers an existing host memory range for use by CUDA
 Page-locks the memory range specified by \code{p} and \code{bytesize} and maps it
 for the device(s) as specified by \code{Flags}. This memory range also is added
 to the same tracking mechanism as \code{cuMemHostAlloc} to automatically accelerate
 calls to functions such as \code{cuMemcpyHtoD}(). Since the memory can be accessed 
 directly by the device, it can be read or written with much higher bandwidth 
 than pageable memory that has not been registered.  Page-locking excessive
 amounts of memory may degrade system performance, since it reduces the amount
 of memory available to the system for paging. As a result, this function is
 best used sparingly to register staging areas for data exchange between
 host and device.

cuMemHostUnregister
Unregisters a memory range that was registered with ::cuMemHostRegister().
 Unmaps the memory range whose base address is specified by \code{p}, and makes
 it pageable again.

cuMemcpy
Copies memory
 Copies data between two pointers. 
 \code{dst} and \code{src} are base pointers of the destination and source, respectively.  
 \code{ByteCount} specifies the number of bytes to copy.
 Note that this function infers the type of the transfer (host to host, host to 
   device, device to device, or device to host) from the pointer values.  This
   function is only allowed in contexts which support unified addressing.
 Note that this function is synchronous.

cuMemcpyPeer
Copies device memory between two contexts
 Copies from device memory in one context to device memory in another
 context. \code{dstDevice} is the base device pointer of the destination memory 
 and \code{dstContext} is the destination context.  \code{srcDevice} is the base 
 device pointer of the source memory and \code{srcContext} is the source pointer.  
 \code{ByteCount} specifies the number of bytes to copy.

 Note that this function is asynchronous with respect to the host, but 
 serialized with respect all pending and future asynchronous work in to the 
 current context, \code{srcContext}, and \code{dstContext} (use \code{cuMemcpyPeerAsync} 
 to avoid this synchronization).

cuMemcpyHtoD
Copies memory from Host to Device
 Copies from host memory to device memory. \code{dstDevice} and \code{srcHost} are
 the base addresses of the destination and source, respectively. \code{ByteCount}
 specifies the number of bytes to copy. Note that this function is
 synchronous.

cuMemcpyDtoH
Copies memory from Device to Host
 Copies from device to host memory. \code{dstHost} and \code{srcDevice} specify the
 base pointers of the destination and source, respectively. \code{ByteCount}
 specifies the number of bytes to copy. Note that this function is
 synchronous.

cuMemcpyDtoD
Copies memory from Device to Device
 Copies from device memory to device memory. \code{dstDevice} and \code{srcDevice}
 are the base pointers of the destination and source, respectively.
 \code{ByteCount} specifies the number of bytes to copy. Note that this function
 is asynchronous.

cuMemcpyDtoA
Copies memory from Device to Array
 Copies from device memory to a 1D CUDA array. \code{dstArray} and \code{dstOffset}
 specify the CUDA array handle and starting index of the destination data.
 \code{srcDevice} specifies the base pointer of the source. \code{ByteCount}
 specifies the number of bytes to copy.

cuMemcpyAtoD
Copies memory from Array to Device
 Copies from one 1D CUDA array to device memory. \code{dstDevice} specifies the
 base pointer of the destination and must be naturally aligned with the CUDA
 array elements. \code{srcArray} and \code{srcOffset} specify the CUDA array handle
 and the offset in bytes into the array where the copy is to begin.
 \code{ByteCount} specifies the number of bytes to copy and must be evenly
 divisible by the array element size.

cuMemcpyHtoA
Copies memory from Host to Array
 Copies from host memory to a 1D CUDA array. \code{dstArray} and \code{dstOffset}
 specify the CUDA array handle and starting offset in bytes of the destination
 data.  \code{pSrc} specifies the base address of the source. \code{ByteCount} specifies
 the number of bytes to copy.

cuMemcpyAtoH
Copies memory from Array to Host
 Copies from one 1D CUDA array to host memory. \code{dstHost} specifies the base
 pointer of the destination. \code{srcArray} and \code{srcOffset} specify the CUDA
 array handle and starting offset in bytes of the source data.
 \code{ByteCount} specifies the number of bytes to copy.

cuMemcpyAtoA
Copies memory from Array to Array
 Copies from one 1D CUDA array to another. \code{dstArray} and \code{srcArray}
 specify the handles of the destination and source CUDA arrays for the copy,
 respectively. \code{dstOffset} and \code{srcOffset} specify the destination and
 source offsets in bytes into the CUDA arrays. \code{ByteCount} is the number of
 bytes to be copied. The size of the elements in the CUDA arrays need not be
 the same format, but the elements must be the same size; and count must be
 evenly divisible by that size.

cuMemcpy2D
Copies memory for 2D arrays
 Perform a 2D memory copy according to the parameters specified in \code{pCopy}.
 The \code{CUDA_MEMCPY}2D structure is defined as:

cuMemcpy2DUnaligned
Copies memory for 2D arrays
 Perform a 2D memory copy according to the parameters specified in \code{pCopy}.
 The \code{CUDA_MEMCPY}2D structure is defined as:

cuMemcpy3D
Copies memory for 3D arrays
 Perform a 3D memory copy according to the parameters specified in
 \code{pCopy}. The \code{CUDA_MEMCPY}3D structure is defined as:

cuMemcpy3DPeer
Copies memory between contexts
 Perform a 3D memory copy according to the parameters specified in
 \code{pCopy}.  See the definition of the \code{CUDA_MEMCPY}3D_PEER structure
 for documentation of its parameters.

cuMemcpyAsync
Copies memory asynchronously
 Copies data between two pointers. 
 \code{dst} and \code{src} are base pointers of the destination and source, respectively.  
 \code{ByteCount} specifies the number of bytes to copy.
 Note that this function infers the type of the transfer (host to host, host to 
   device, device to device, or device to host) from the pointer values.  This
   function is only allowed in contexts which support unified addressing.
 Note that this function is asynchronous and can optionally be associated to 
   a stream by passing a non-zero \code{hStream} argument

cuMemcpyPeerAsync
Copies device memory between two contexts asynchronously.
 Copies from device memory in one context to device memory in another
 context. \code{dstDevice} is the base device pointer of the destination memory 
 and \code{dstContext} is the destination context.  \code{srcDevice} is the base 
 device pointer of the source memory and \code{srcContext} is the source pointer.  
 \code{ByteCount} specifies the number of bytes to copy.  Note that this function
 is asynchronous with respect to the host and all work in other streams in
 other devices.

cuMemcpyHtoDAsync
Copies memory from Host to Device
 Copies from host memory to device memory. \code{dstDevice} and \code{srcHost} are
 the base addresses of the destination and source, respectively. \code{ByteCount}
 specifies the number of bytes to copy.

cuMemcpyDtoHAsync
Copies memory from Device to Host
 Copies from device to host memory. \code{dstHost} and \code{srcDevice} specify the
 base pointers of the destination and source, respectively. \code{ByteCount}
 specifies the number of bytes to copy.

cuMemcpyDtoDAsync
Copies memory from Device to Device
 Copies from device memory to device memory. \code{dstDevice} and \code{srcDevice}
 are the base pointers of the destination and source, respectively.
 \code{ByteCount} specifies the number of bytes to copy. Note that this function
 is asynchronous and can optionally be associated to a stream by passing a
 non-zero \code{hStream} argument

cuMemcpyHtoAAsync
Copies memory from Host to Array
 Copies from host memory to a 1D CUDA array. \code{dstArray} and \code{dstOffset}
 specify the CUDA array handle and starting offset in bytes of the
 destination data. \code{srcHost} specifies the base address of the source.
 \code{ByteCount} specifies the number of bytes to copy.

cuMemcpyAtoHAsync
Copies memory from Array to Host
 Copies from one 1D CUDA array to host memory. \code{dstHost} specifies the base
 pointer of the destination. \code{srcArray} and \code{srcOffset} specify the CUDA
 array handle and starting offset in bytes of the source data.
 \code{ByteCount} specifies the number of bytes to copy.

cuMemcpy2DAsync
Copies memory for 2D arrays
 Perform a 2D memory copy according to the parameters specified in \code{pCopy}.
 The \code{CUDA_MEMCPY}2D structure is defined as:

cuMemcpy3DAsync
Copies memory for 3D arrays
 Perform a 3D memory copy according to the parameters specified in
 \code{pCopy}. The \code{CUDA_MEMCPY}3D structure is defined as:

cuMemcpy3DPeerAsync
Copies memory between contexts asynchronously.
 Perform a 3D memory copy according to the parameters specified in
 \code{pCopy}.  See the definition of the \code{CUDA_MEMCPY}3D_PEER structure
 for documentation of its parameters.

cuMemsetD8
Initializes device memory
 Sets the memory range of \code{N} 8-bit values to the specified value
 \code{uc}.

cuMemsetD16
Initializes device memory
 Sets the memory range of \code{N} 16-bit values to the specified value
 \code{us}. The \code{dstDevice} pointer must be two byte aligned.

cuMemsetD32
Initializes device memory
 Sets the memory range of \code{N} 32-bit values to the specified value
 \code{ui}. The \code{dstDevice} pointer must be four byte aligned.

cuMemsetD2D8
Initializes device memory
 Sets the 2D memory range of \code{Width} 8-bit values to the specified value
 \code{uc}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cuMemsetD2D16
Initializes device memory
 Sets the 2D memory range of \code{Width} 16-bit values to the specified value
 \code{us}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. The \code{dstDevice} pointer
 and \code{dstPitch} offset must be two byte aligned. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cuMemsetD2D32
Initializes device memory
 Sets the 2D memory range of \code{Width} 32-bit values to the specified value
 \code{ui}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. The \code{dstDevice} pointer
 and \code{dstPitch} offset must be four byte aligned. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cuMemsetD8Async
Sets device memory
 Sets the memory range of \code{N} 8-bit values to the specified value
 \code{uc}.

cuMemsetD16Async
Sets device memory
 Sets the memory range of \code{N} 16-bit values to the specified value
 \code{us}. The \code{dstDevice} pointer must be two byte aligned.

cuMemsetD32Async
Sets device memory
 Sets the memory range of \code{N} 32-bit values to the specified value
 \code{ui}. The \code{dstDevice} pointer must be four byte aligned.

cuMemsetD2D8Async
Sets device memory
 Sets the 2D memory range of \code{Width} 8-bit values to the specified value
 \code{uc}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cuMemsetD2D16Async
Sets device memory
 Sets the 2D memory range of \code{Width} 16-bit values to the specified value
 \code{us}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. The \code{dstDevice} pointer 
 and \code{dstPitch} offset must be two byte aligned. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cuMemsetD2D32Async
Sets device memory
 Sets the 2D memory range of \code{Width} 32-bit values to the specified value
 \code{ui}. \code{Height} specifies the number of rows to set, and \code{dstPitch}
 specifies the number of bytes between each row. The \code{dstDevice} pointer
 and \code{dstPitch} offset must be four byte aligned. This function performs
 fastest when the pitch is one that has been passed back by
 \code{cuMemAllocPitch}().

cudaMemcpy3D
Copies data between 3D objects
\verb{
struct cudaExtent {
  size_t width;
  size_t height;
  size_t depth;
};
struct cudaExtent make_cudaExtent(size_t w, size_t h, size_t d);

struct cudaPos {
  size_t x;
  size_t y;
  size_t z;
};
struct cudaPos make_cudaPos(size_t x, size_t y, size_t z);

struct cudaMemcpy3DParms {
  cudaArray_t           srcArray;
  struct cudaPos        srcPos;
  struct cudaPitchedPtr srcPtr;
  cudaArray_t           dstArray;
  struct cudaPos        dstPos;
  struct cudaPitchedPtr dstPtr;
  struct cudaExtent     extent;
  enum cudaMemcpyKind   kind;
};
}

cudaMemcpy3DPeer
Copies memory between devices
 Perform a 3D memory copy according to the parameters specified in
 \code{p}.  See the definition of the \code{cudaMemcpy}3DPeerParms structure
 for documentation of its parameters.

cudaMemcpy3DAsync
Copies data between 3D objects
\verb{
struct cudaExtent {
  size_t width;
  size_t height;
  size_t depth;
};
struct cudaExtent make_cudaExtent(size_t w, size_t h, size_t d);

struct cudaPos {
  size_t x;
  size_t y;
  size_t z;
};
struct cudaPos make_cudaPos(size_t x, size_t y, size_t z);

struct cudaMemcpy3DParms {
  cudaArray_t           srcArray;
  struct cudaPos        srcPos;
  struct cudaPitchedPtr srcPtr;
  cudaArray_t           dstArray;
  struct cudaPos        dstPos;
  struct cudaPitchedPtr dstPtr;
  struct cudaExtent     extent;
  enum cudaMemcpyKind   kind;
};
}

cudaMemcpy3DPeerAsync
Copies memory between devices asynchronously.
 Perform a 3D memory copy according to the parameters specified in
 \code{p}.  See the definition of the \code{cudaMemcpy}3DPeerParms structure
 for documentation of its parameters.

cudaMemGetInfo
Gets free and total device memory
 Returns  and \code{*total} respectively, the free and total amount of
 memory available for allocation by the device in bytes.

cudaMemcpy
Copies data between host and device
 Copies \code{count} bytes from the memory area pointed to by \code{src} to the
 memory area pointed to by \code{dst}, where \code{kind} is one of
 \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost},
 or \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy. The
 memory areas may not overlap. Calling \code{cudaMemcpy}() with \code{dst} and \code{src}
 pointers that do not match the direction of the copy results in an
 undefined behavior.

cudaMemcpyPeer
Copies memory between two devices
 Copies memory from one device to memory on another device.  \code{dst} is the 
 base device pointer of the destination memory and \code{dstDevice} is the 
 destination device.  \code{src} is the base device pointer of the source memory 
 and \code{srcDevice} is the source device.  \code{count} specifies the number of bytes 
 to copy.

cudaMemcpyToArray
Copies data between host and device
 Copies \code{count} bytes from the memory area pointed to by \code{src} to the
 CUDA array \code{dst} starting at the upper left corner
 (\code{wOffset}, \code{hOffset)}, where \code{kind} is one of \code{cudaMemcpyHostToHost},
 \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost}, or
 \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy.

cudaMemcpyFromArray
Copies data between host and device
 Copies \code{count} bytes from the CUDA array \code{src} starting at the upper
 left corner (\code{wOffset}, hOffset) to the memory area pointed to by \code{dst},
 where \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy.

cudaMemcpyArrayToArray
Copies data between host and device
 Copies \code{count} bytes from the CUDA array \code{src} starting at the upper
 left corner (\code{wOffsetSrc}, \code{hOffsetSrc)} to the CUDA array \code{dst}
 starting at the upper left corner (\code{wOffsetDst}, \code{hOffsetDst)} where
 \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy.

cudaMemcpy2D
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the memory
 area pointed to by \code{src} to the memory area pointed to by \code{dst}, where
 \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy. \code{dpitch} and \code{spitch} are the widths in memory in
 bytes of the 2D arrays pointed to by \code{dst} and \code{src}, including any
 padding added to the end of each row. The memory areas may not overlap.
 \code{width} must not exceed either \code{dpitch} or \code{spitch}.
 Calling \code{cudaMemcpy}2D() with \code{dst} and \code{src} pointers that do not match
 the direction of the copy results in an undefined behavior.
 \code{cudaMemcpy}2D() returns an error if \code{dpitch} or \code{spitch} exceeds
 the maximum allowed.

cudaMemcpy2DToArray
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the memory
 area pointed to by \code{src} to the CUDA array \code{dst} starting at the
 upper left corner (\code{wOffset}, \code{hOffset)} where \code{kind} is one of
 \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost},
 or \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy.
 \code{spitch} is the width in memory in bytes of the 2D array pointed to by
 \code{src}, including any padding added to the end of each row. \code{wOffset} +
 \code{width} must not exceed the width of the CUDA array \code{dst}. \code{width} must
 not exceed \code{spitch}. \code{cudaMemcpy}2DToArray() returns an error if \code{spitch}
 exceeds the maximum allowed.

cudaMemcpy2DFromArray
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the CUDA
 array \code{srcArray} starting at the upper left corner
 (\code{wOffset}, \code{hOffset)} to the memory area pointed to by \code{dst}, where
 \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy. \code{dpitch} is the width in memory in bytes of the 2D
 array pointed to by \code{dst}, including any padding added to the end of each
 row. \code{wOffset} + \code{width} must not exceed the width of the CUDA array
 \code{src}. \code{width} must not exceed \code{dpitch}. \code{cudaMemcpy}2DFromArray()
 returns an error if \code{dpitch} exceeds the maximum allowed.

cudaMemcpy2DArrayToArray
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the CUDA
 array \code{srcArray} starting at the upper left corner
 (\code{wOffsetSrc}, \code{hOffsetSrc)} to the CUDA array \code{dst} starting at
 the upper left corner (\code{wOffsetDst}, \code{hOffsetDst)}, where \code{kind} is one
 of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy. \code{wOffsetDst} + \code{width} must not exceed the width
 of the CUDA array \code{dst}. \code{wOffsetSrc} + \code{width} must not exceed the width
 of the CUDA array \code{src}.

cudaMemcpyToSymbol
Copies data to the given symbol on the device
 Copies \code{count} bytes from the memory area pointed to by \code{src}
 to the memory area pointed to by \code{offset} bytes from the start of symbol
 \code{symbol}. The memory areas may not overlap. \code{symbol} is a variable that
 resides in global or constant memory space. \code{kind} can be either
 \code{cudaMemcpyHostToDevice} or \code{cudaMemcpyDeviceToDevice}.

cudaMemcpyFromSymbol
Copies data from the given symbol on the device
 Copies \code{count} bytes from the memory area pointed to by \code{offset} bytes
 from the start of symbol \code{symbol} to the memory area pointed to by \code{dst}.
 The memory areas may not overlap. \code{symbol} is a variable that
 resides in global or constant memory space. \code{kind} can be either
 \code{cudaMemcpyDeviceToHost} or \code{cudaMemcpyDeviceToDevice}.

cudaMemcpyAsync
Copies data between host and device
 Copies \code{count} bytes from the memory area pointed to by \code{src} to the
 memory area pointed to by \code{dst}, where \code{kind} is one of
 \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost},
 or \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy. The
 memory areas may not overlap. Calling \code{cudaMemcpyAsync}() with \code{dst} and
 \code{src} pointers that do not match the direction of the copy results in an
 undefined behavior.

cudaMemcpyPeerAsync
Copies memory between two devices asynchronously.
 Copies memory from one device to memory on another device.  \code{dst} is the 
 base device pointer of the destination memory and \code{dstDevice} is the 
 destination device.  \code{src} is the base device pointer of the source memory 
 and \code{srcDevice} is the source device.  \code{count} specifies the number of bytes 
 to copy.

cudaMemcpyToArrayAsync
Copies data between host and device
 Copies \code{count} bytes from the memory area pointed to by \code{src} to the
 CUDA array \code{dst} starting at the upper left corner
 (\code{wOffset}, \code{hOffset)}, where \code{kind} is one of \code{cudaMemcpyHostToHost},
 \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost}, or
 \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy.

cudaMemcpyFromArrayAsync
Copies data between host and device
 Copies \code{count} bytes from the CUDA array \code{src} starting at the upper
 left corner (\code{wOffset}, hOffset) to the memory area pointed to by \code{dst},
 where \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy.

cudaMemcpy2DAsync
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the memory
 area pointed to by \code{src} to the memory area pointed to by \code{dst}, where
 \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy. \code{dpitch} and \code{spitch} are the widths in memory in
 bytes of the 2D arrays pointed to by \code{dst} and \code{src}, including any
 padding added to the end of each row. The memory areas may not overlap.
 \code{width} must not exceed either \code{dpitch} or \code{spitch}.
 Calling \code{cudaMemcpy}2DAsync() with \code{dst} and \code{src} pointers that do not
 match the direction of the copy results in an undefined behavior.
 \code{cudaMemcpy}2DAsync() returns an error if \code{dpitch} or \code{spitch} is greater
 than the maximum allowed.

cudaMemcpy2DToArrayAsync
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the memory
 area pointed to by \code{src} to the CUDA array \code{dst} starting at the
 upper left corner (\code{wOffset}, \code{hOffset)} where \code{kind} is one of
 \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice}, \code{cudaMemcpyDeviceToHost},
 or \code{cudaMemcpyDeviceToDevice}, and specifies the direction of the copy.
 \code{spitch} is the width in memory in bytes of the 2D array pointed to by
 \code{src}, including any padding added to the end of each row. \code{wOffset} +
 \code{width} must not exceed the width of the CUDA array \code{dst}. \code{width} must
 not exceed \code{spitch}. \code{cudaMemcpy}2DToArrayAsync() returns an error if
 \code{spitch} exceeds the maximum allowed.

cudaMemcpy2DFromArrayAsync
Copies data between host and device
 Copies a matrix (\code{height} rows of \code{width} bytes each) from the CUDA
 array \code{srcArray} starting at the upper left corner
 (\code{wOffset}, \code{hOffset)} to the memory area pointed to by \code{dst}, where
 \code{kind} is one of \code{cudaMemcpyHostToHost}, \code{cudaMemcpyHostToDevice},
 \code{cudaMemcpyDeviceToHost}, or \code{cudaMemcpyDeviceToDevice}, and specifies the
 direction of the copy. \code{dpitch} is the width in memory in bytes of the 2D
 array pointed to by \code{dst}, including any padding added to the end of each
 row. \code{wOffset} + \code{width} must not exceed the width of the CUDA array
 \code{src}. \code{width} must not exceed \code{dpitch}. \code{cudaMemcpy}2DFromArrayAsync()
 returns an error if \code{dpitch} exceeds the maximum allowed.

cudaMemcpyToSymbolAsync
Copies data to the given symbol on the device
 Copies \code{count} bytes from the memory area pointed to by \code{src}
 to the memory area pointed to by \code{offset} bytes from the start of symbol
 \code{symbol}. The memory areas may not overlap. \code{symbol} is a variable that
 resides in global or constant memory space. \code{kind} can be either
 \code{cudaMemcpyHostToDevice} or \code{cudaMemcpyDeviceToDevice}.

cudaMemcpyFromSymbolAsync
Copies data from the given symbol on the device
 Copies \code{count} bytes from the memory area pointed to by \code{offset} bytes
 from the start of symbol \code{symbol} to the memory area pointed to by \code{dst}.
 The memory areas may not overlap. \code{symbol} is a variable that resides in
 global or constant memory space. \code{kind} can be either
 \code{cudaMemcpyDeviceToHost} or \code{cudaMemcpyDeviceToDevice}.

cudaMemset
Initializes or sets device memory to a value
 Fills the first \code{count} bytes of the memory area pointed to by \code{devPtr}
 with the constant byte value \code{value}.

cudaMemset2D
Initializes or sets device memory to a value
 Sets to the specified value \code{value} a matrix (\code{height} rows of \code{width}
 bytes each) pointed to by \code{dstPtr}. \code{pitch} is the width in bytes of the
 2D array pointed to by \code{dstPtr}, including any padding added to the end
 of each row. This function performs fastest when the pitch is one that has
 been passed back by \code{cudaMallocPitch}().

cudaMemset3D
Initializes or sets device memory to a value
 Initializes each element of a 3D array to the specified value \code{value}.
 The object to initialize is defined by \code{pitchedDevPtr}. The \code{pitch} field
 of \code{pitchedDevPtr} is the width in memory in bytes of the 3D array pointed
 to by \code{pitchedDevPtr}, including any padding added to the end of each row.
 The \code{xsize} field specifies the logical width of each row in bytes, while
 the \code{ysize} field specifies the height of each 2D slice in rows.

cudaMemsetAsync
Initializes or sets device memory to a value
 Fills the first \code{count} bytes of the memory area pointed to by \code{devPtr}
 with the constant byte value \code{value}.

cudaMemset2DAsync
Initializes or sets device memory to a value
 Sets to the specified value \code{value} a matrix (\code{height} rows of \code{width}
 bytes each) pointed to by \code{dstPtr}. \code{pitch} is the width in bytes of the
 2D array pointed to by \code{dstPtr}, including any padding added to the end
 of each row. This function performs fastest when the pitch is one that has
 been passed back by \code{cudaMallocPitch}().

cudaMemset3DAsync
Initializes or sets device memory to a value
 Initializes each element of a 3D array to the specified value \code{value}.
 The object to initialize is defined by \code{pitchedDevPtr}. The \code{pitch} field
 of \code{pitchedDevPtr} is the width in memory in bytes of the 3D array pointed
 to by \code{pitchedDevPtr}, including any padding added to the end of each row.
 The \code{xsize} field specifies the logical width of each row in bytes, while
 the \code{ysize} field specifies the height of each 2D slice in rows.
}

\arguments{
  \item{ByteCount}{Size of memory copy in bytes}
  \item{bytesize}{c("Requested allocation size in bytes", "Size in bytes of the address range to pagelock")}
  \item{count}{c("Size in bytes to copy", "Size of memory copy in bytes", "Size in bytes to set")}
  \item{devPtr}{c("Pointer to device memory", "Pointer to 2D device memory")}
  \item{dpitch}{Pitch of destination memory}
  \item{dptr}{c("Returned device pointer", "Pointer to memory to free", "Device pointer to query")}
  \item{dst}{c("Destination unified virtual address space pointer", "Destination memory address", "Destination device pointer")}
  \item{dstArray}{Destination array}
  \item{dstContext}{Destination context}
  \item{dstDevice}{c("Destination device pointer", "Destination device")}
  \item{dstHost}{c("Destination host pointer", "Destination device pointer", "Destination pointer")}
  \item{dstOffset}{Offset in bytes of destination array}
  \item{dstPitch}{Pitch of destination device pointer}
  \item{ElementSizeBytes}{Size of largest reads/writes for range}
  \item{extent}{Size parameters for where to set device memory (\code{width} field in bytes)}
  \item{Flags}{c("Flags for allocation request", "Options (must be 0)")}
  \item{free}{Returned free memory in bytes}
  \item{height}{c("Height of matrix transfer (rows)", "Height of matrix set (rows)")}
  \item{Height}{c("Requested allocation height in rows", "Number of rows")}
  \item{hOffset}{c("Destination starting Y offset", "Source starting Y offset")}
  \item{hOffsetDst}{Destination starting Y offset}
  \item{hOffsetSrc}{Source starting Y offset}
  \item{hStream}{Stream identifier}
  \item{kind}{Type of transfer}
  \item{N}{Number of elements}
  \item{offset}{Offset from start of symbol in bytes}
  \item{p}{c("Pointer to memory to free", "Host pointer", "Host pointer to memory to pagelock", "Host pointer to memory to unregister", "3D memory copy parameters", "Parameters for the memory copy")}
  \item{pbase}{Returned base address}
  \item{pCopy}{Parameters for the memory copy}
  \item{pdptr}{Returned device pointer}
  \item{pFlags}{Returned flags word}
  \item{pitch}{Pitch in bytes of 2D device memory}
  \item{pitchedDevPtr}{Pointer to pitched device memory}
  \item{pp}{Returned host pointer to pagelocked memory}
  \item{pPitch}{Returned pitch of allocation in bytes}
  \item{psize}{Returned size of device memory allocation}
  \item{spitch}{Pitch of source memory}
  \item{src}{c("Source unified virtual address space pointer", "Source memory address", "Source device pointer")}
  \item{srcArray}{Source array}
  \item{srcContext}{Source context}
  \item{srcDevice}{c("Source device pointer", "Source device")}
  \item{srcHost}{Source host pointer}
  \item{srcOffset}{Offset in bytes of source array}
  \item{stream}{Stream identifier}
  \item{symbol}{Device symbol address}
  \item{total}{Returned total memory in bytes}
  \item{uc}{Value to set}
  \item{ui}{Value to set}
  \item{us}{Value to set}
  \item{value}{Value to set for each byte of specified memory}
  \item{width}{c("Width of matrix transfer (columns in bytes)", "Width of matrix set (columns in bytes)")}
  \item{Width}{Width of row}
  \item{WidthInBytes}{Requested allocation width in bytes}
  \item{wOffset}{c("Destination starting X offset", "Source starting X offset")}
  \item{wOffsetDst}{Destination starting X offset}
  \item{wOffsetSrc}{Source starting X offset}
}

\seealso{\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuMemAllocHost}", "\\code{cuMemHostAlloc")}
\code{c("\cuMemHostUnregister}", "\\code{cuMemHostGetFlags}", "\\code{cuMemHostGetDevicePointer")}
\code{cuMemHostRegister}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", 
"\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuMemcpyDtoD}", "\\code{cuMemcpy}3DPeer", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpyPeerAsync}", "\\code{cuMemcpy3DPeerAsync")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", 
"\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpyDtoH}", 
"\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}16", "\\code{cuMemsetD32")}
\code{c("\cuMemcpyDtoD}", "\\code{cuMemcpyPeer}", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpyPeerAsync}", "\\code{cuMemcpy3DPeerAsync")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoH}", 
"\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuMemcpyDtoD}", "\\code{cuMemcpyPeer}", "\\code{cuMemcpy}3DPeer", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpy3DPeerAsync")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoH}", 
"\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpyDtoH}", 
"\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuMemcpyDtoD}", "\\code{cuMemcpyPeer}", "\\code{cuMemcpyDtoDAsync}", "\\code{cuMemcpyPeerAsync}", "\\code{cuMemcpy3DPeerAsync")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", 
"\\code{cuMemsetD}8Async", "\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD32")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}2D32Async", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cuArray}3DCreate", "\\code{cuArray}3DGetDescriptor", "\\code{cuArrayCreate}", "\\code{cuArrayDestroy}", "\\code{cuArrayGetDescriptor}", "\\code{cuMemAlloc}", "\\code{cuMemAllocHost}", "\\code{cuMemAllocPitch}", "\\code{cuMemcpy}2D", "\\code{cuMemcpy}2DAsync", "\\code{cuMemcpy}2DUnaligned", "\\code{cuMemcpy}3D", "\\code{cuMemcpy}3DAsync", "\\code{cuMemcpyAtoA}", "\\code{cuMemcpyAtoD}", "\\code{cuMemcpyAtoH}", "\\code{cuMemcpyAtoHAsync}", "\\code{cuMemcpyDtoA}", "\\code{cuMemcpyDtoD}", "\\code{cuMemcpyDtoDAsync}", 
"\\code{cuMemcpyDtoH}", "\\code{cuMemcpyDtoHAsync}", "\\code{cuMemcpyHtoA}", "\\code{cuMemcpyHtoAAsync}", "\\code{cuMemcpyHtoD}", "\\code{cuMemcpyHtoDAsync}", "\\code{cuMemFree}", "\\code{cuMemFreeHost}", "\\code{cuMemGetAddressRange}", "\\code{cuMemGetInfo}", "\\code{cuMemHostAlloc}", "\\code{cuMemHostGetDevicePointer}", "\\code{cuMemsetD}2D8", "\\code{cuMemsetD}2D8Async", "\\code{cuMemsetD}2D16", "\\code{cuMemsetD}2D16Async", "\\code{cuMemsetD}2D32", "\\code{cuMemsetD}8", "\\code{cuMemsetD}8Async", 
"\\code{cuMemsetD}16", "\\code{cuMemsetD}16Async", "\\code{cuMemsetD}32", "\\code{cuMemsetD32Async")}
\code{c("\cudaMalloc}3D", "\\code{cudaMalloc}3DArray", "\\code{cudaMemset}3D", "\\code{cudaMemcpy}3DAsync", "\\code{cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", 
"\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", "\\code{cudaMemcpyFromSymbolAsync}", "\\code{make_cudaExtent}", "\\code{make_cudaPos")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpyPeer}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpyPeerAsync}", "\\code{cudaMemcpy3DPeerAsync")}
\code{c("\cudaMalloc}3D", "\\code{cudaMalloc}3DArray", "\\code{cudaMemset}3D", "\\code{cudaMemcpy}3D", "\\code{cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", 
"\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", "\\code{cudaMemcpyFromSymbolAsync}", "\\code{make_cudaExtent}", "\\code{make_cudaPos")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpyPeer}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpyPeerAsync}", "\\code{cudaMemcpy3DPeerAsync")}
\code{NA}
\code{c("\cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpyPeerAsync}", "\\code{cudaMemcpy3DPeerAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpyPeer}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy3DPeerAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpyToSymbolAsync}", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", 
"\\code{cudaMemcpyFromSymbolAsync")}
\code{c("\cudaMemcpy}", "\\code{cudaMemcpy}2D", "\\code{cudaMemcpyToArray}", "\\code{cudaMemcpy}2DToArray", "\\code{cudaMemcpyFromArray}", "\\code{cudaMemcpy}2DFromArray", "\\code{cudaMemcpyArrayToArray}", "\\code{cudaMemcpy}2DArrayToArray", "\\code{cudaMemcpyToSymbol}", "\\code{cudaMemcpyFromSymbol}", "\\code{cudaMemcpyAsync}", "\\code{cudaMemcpy}2DAsync", "\\code{cudaMemcpyToArrayAsync}", "\\code{cudaMemcpy}2DToArrayAsync", "\\code{cudaMemcpyFromArrayAsync}", "\\code{cudaMemcpy}2DFromArrayAsync", 
"\\code{cudaMemcpyToSymbolAsync")}
\code{c("\cudaMemset}2D", "\\code{cudaMemset}3D", "\\code{cudaMemsetAsync}", "\\code{cudaMemset}2DAsync", "\\code{cudaMemset3DAsync")}
\code{c("\cudaMemset}", "\\code{cudaMemset}3D", "\\code{cudaMemsetAsync}", "\\code{cudaMemset}2DAsync", "\\code{cudaMemset3DAsync")}
\code{c("\cudaMemset}", "\\code{cudaMemset}2D", "\\code{cudaMemsetAsync}", "\\code{cudaMemset}2DAsync", "\\code{cudaMemset}3DAsync", "\\code{cudaMalloc}3D", "\\code{make_cudaPitchedPtr}", "\\code{make_cudaExtent")}
\code{c("\cudaMemset}", "\\code{cudaMemset}2D", "\\code{cudaMemset}3D", "\\code{cudaMemset}2DAsync", "\\code{cudaMemset3DAsync")}
\code{c("\cudaMemset}", "\\code{cudaMemset}2D", "\\code{cudaMemset}3D", "\\code{cudaMemsetAsync}", "\\code{cudaMemset3DAsync")}
\code{c("\cudaMemset}", "\\code{cudaMemset}2D", "\\code{cudaMemset}3D", "\\code{cudaMemsetAsync}", "\\code{cudaMemset}2DAsync", "\\code{cudaMalloc}3D", "\\code{make_cudaPitchedPtr}", "\\code{make_cudaExtent")}}
\references{\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.htm}}
\keyword{programming}
\concept{GPU}
