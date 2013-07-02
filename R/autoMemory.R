#include "RCUDA.h"


cuMemGetInfo <-
function(  )
{
ans = .Call('R_auto_cuMemGetInfo')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemGetInfo')
ans
}


cuMemAlloc <-
function( bytesize  )
{
ans = .Call('R_auto_cuMemAlloc', as(bytesize, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemAlloc')
ans
}


cuMemAllocPitch <-
function( WidthInBytes , Height , ElementSizeBytes  )
{
ans = .Call('R_auto_cuMemAllocPitch', as(WidthInBytes, 'size_t'), as(Height, 'size_t'), as(ElementSizeBytes, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemAllocPitch')
ans
}


cuMemFree <-
function( dptr  )
{
ans = .Call('R_auto_cuMemFree', as(dptr, 'CUdeviceptr'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemFree')
ans
}


cuMemGetAddressRange <-
function( dptr  )
{
ans = .Call('R_auto_cuMemGetAddressRange', as(dptr, 'CUdeviceptr'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemGetAddressRange')
ans
}


cuMemAllocHost <-
function( bytesize  )
{
ans = .Call('R_auto_cuMemAllocHost', as(bytesize, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemAllocHost')
ans
}


cuMemFreeHost <-
function( p  )
{
ans = .Call('R_auto_cuMemFreeHost', as(p, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemFreeHost')
ans
}


cuMemHostAlloc <-
function( bytesize , Flags  )
{
ans = .Call('R_auto_cuMemHostAlloc', as(bytesize, 'size_t'), as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemHostAlloc')
ans
}


cuMemHostGetDevicePointer <-
function( p , Flags  )
{
ans = .Call('R_auto_cuMemHostGetDevicePointer', as(p, 'void'), as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemHostGetDevicePointer')
ans
}


cuMemHostGetFlags <-
function( p  )
{
ans = .Call('R_auto_cuMemHostGetFlags', as(p, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemHostGetFlags')
ans
}


cuMemHostRegister <-
function( p , bytesize , Flags  )
{
ans = .Call('R_auto_cuMemHostRegister', as(p, 'void'), as(bytesize, 'size_t'), as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemHostRegister')
ans
}


cuMemHostUnregister <-
function( p  )
{
ans = .Call('R_auto_cuMemHostUnregister', as(p, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemHostUnregister')
ans
}


cuMemcpy <-
function( dst , src , ByteCount  )
{
ans = .Call('R_auto_cuMemcpy', as(dst, 'CUdeviceptr'), as(src, 'CUdeviceptr'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy')
ans
}


cuMemcpyPeer <-
function( dstDevice , dstContext , srcDevice , srcContext , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyPeer', as(dstDevice, 'CUdeviceptr'), as(dstContext, 'CUcontext'), as(srcDevice, 'CUdeviceptr'), as(srcContext, 'CUcontext'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyPeer')
ans
}


cuMemcpyHtoD <-
function( dstDevice , srcHost , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyHtoD', as(dstDevice, 'CUdeviceptr'), as(srcHost, 'void'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyHtoD')
ans
}


cuMemcpyDtoH <-
function( dstHost , srcDevice , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyDtoH', as(dstHost, 'void'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyDtoH')
ans
}


cuMemcpyDtoD <-
function( dstDevice , srcDevice , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyDtoD', as(dstDevice, 'CUdeviceptr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyDtoD')
ans
}


cuMemcpyDtoA <-
function( dstArray , dstOffset , srcDevice , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyDtoA', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyDtoA')
ans
}


cuMemcpyAtoD <-
function( dstDevice , srcArray , srcOffset , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyAtoD', as(dstDevice, 'CUdeviceptr'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyAtoD')
ans
}


cuMemcpyHtoA <-
function( dstArray , dstOffset , srcHost , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyHtoA', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcHost, 'void'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyHtoA')
ans
}


cuMemcpyAtoH <-
function( dstHost , srcArray , srcOffset , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyAtoH', as(dstHost, 'void'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyAtoH')
ans
}


cuMemcpyAtoA <-
function( dstArray , dstOffset , srcArray , srcOffset , ByteCount  )
{
ans = .Call('R_auto_cuMemcpyAtoA', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyAtoA')
ans
}


cuMemcpy2D <-
function( pCopy  )
{
ans = .Call('R_auto_cuMemcpy2D', as(pCopy, 'CUDA_MEMCPY2D'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy2D')
ans
}


cuMemcpy2DUnaligned <-
function( pCopy  )
{
ans = .Call('R_auto_cuMemcpy2DUnaligned', as(pCopy, 'CUDA_MEMCPY2D'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy2DUnaligned')
ans
}


cuMemcpy3D <-
function( pCopy  )
{
ans = .Call('R_auto_cuMemcpy3D', as(pCopy, 'CUDA_MEMCPY3D'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy3D')
ans
}


cuMemcpy3DPeer <-
function( pCopy  )
{
ans = .Call('R_auto_cuMemcpy3DPeer', as(pCopy, 'CUDA_MEMCPY3D_PEER'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy3DPeer')
ans
}


cuMemcpyAsync <-
function( dst , src , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyAsync', as(dst, 'CUdeviceptr'), as(src, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyAsync')
ans
}


cuMemcpyPeerAsync <-
function( dstDevice , dstContext , srcDevice , srcContext , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyPeerAsync', as(dstDevice, 'CUdeviceptr'), as(dstContext, 'CUcontext'), as(srcDevice, 'CUdeviceptr'), as(srcContext, 'CUcontext'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyPeerAsync')
ans
}


cuMemcpyHtoDAsync <-
function( dstDevice , srcHost , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyHtoDAsync', as(dstDevice, 'CUdeviceptr'), as(srcHost, 'void'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyHtoDAsync')
ans
}


cuMemcpyDtoHAsync <-
function( dstHost , srcDevice , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyDtoHAsync', as(dstHost, 'void'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyDtoHAsync')
ans
}


cuMemcpyDtoDAsync <-
function( dstDevice , srcDevice , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyDtoDAsync', as(dstDevice, 'CUdeviceptr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyDtoDAsync')
ans
}


cuMemcpyHtoAAsync <-
function( dstArray , dstOffset , srcHost , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyHtoAAsync', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcHost, 'void'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyHtoAAsync')
ans
}


cuMemcpyAtoHAsync <-
function( dstHost , srcArray , srcOffset , ByteCount , hStream  )
{
ans = .Call('R_auto_cuMemcpyAtoHAsync', as(dstHost, 'void'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpyAtoHAsync')
ans
}


cuMemcpy2DAsync <-
function( pCopy , hStream  )
{
ans = .Call('R_auto_cuMemcpy2DAsync', as(pCopy, 'CUDA_MEMCPY2D'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy2DAsync')
ans
}


cuMemcpy3DAsync <-
function( pCopy , hStream  )
{
ans = .Call('R_auto_cuMemcpy3DAsync', as(pCopy, 'CUDA_MEMCPY3D'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy3DAsync')
ans
}


cuMemcpy3DPeerAsync <-
function( pCopy , hStream  )
{
ans = .Call('R_auto_cuMemcpy3DPeerAsync', as(pCopy, 'CUDA_MEMCPY3D_PEER'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemcpy3DPeerAsync')
ans
}


cuMemsetD8 <-
function( dstDevice , uc , N  )
{
ans = .Call('R_auto_cuMemsetD8', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD8')
ans
}


cuMemsetD16 <-
function( dstDevice , us , N  )
{
ans = .Call('R_auto_cuMemsetD16', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD16')
ans
}


cuMemsetD32 <-
function( dstDevice , ui , N  )
{
ans = .Call('R_auto_cuMemsetD32', as(dstDevice, 'CUdeviceptr'), as(ui, 'numeric'), as(N, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD32')
ans
}


cuMemsetD2D8 <-
function( dstDevice , dstPitch , uc , Width , Height  )
{
ans = .Call('R_auto_cuMemsetD2D8', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D8')
ans
}


cuMemsetD2D16 <-
function( dstDevice , dstPitch , us , Width , Height  )
{
ans = .Call('R_auto_cuMemsetD2D16', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D16')
ans
}


cuMemsetD2D32 <-
function( dstDevice , dstPitch , ui , Width , Height  )
{
ans = .Call('R_auto_cuMemsetD2D32', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(ui, 'numeric'), as(Width, 'size_t'), as(Height, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D32')
ans
}


cuMemsetD8Async <-
function( dstDevice , uc , N , hStream  )
{
ans = .Call('R_auto_cuMemsetD8Async', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD8Async')
ans
}


cuMemsetD16Async <-
function( dstDevice , us , N , hStream  )
{
ans = .Call('R_auto_cuMemsetD16Async', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD16Async')
ans
}


cuMemsetD32Async <-
function( dstDevice , ui , N , hStream  )
{
ans = .Call('R_auto_cuMemsetD32Async', as(dstDevice, 'CUdeviceptr'), as(ui, 'numeric'), as(N, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD32Async')
ans
}


cuMemsetD2D8Async <-
function( dstDevice , dstPitch , uc , Width , Height , hStream  )
{
ans = .Call('R_auto_cuMemsetD2D8Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D8Async')
ans
}


cuMemsetD2D16Async <-
function( dstDevice , dstPitch , us , Width , Height , hStream  )
{
ans = .Call('R_auto_cuMemsetD2D16Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D16Async')
ans
}


cuMemsetD2D32Async <-
function( dstDevice , dstPitch , ui , Width , Height , hStream  )
{
ans = .Call('R_auto_cuMemsetD2D32Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(ui, 'numeric'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuMemsetD2D32Async')
ans
}


cudaMemcpy3D <-
function( p  )
{
ans = .Call('R_auto_cudaMemcpy3D', as(p, 'struct cudaMemcpy3DParms'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy3D')
ans
}


cudaMemcpy3DPeer <-
function( p  )
{
ans = .Call('R_auto_cudaMemcpy3DPeer', as(p, 'struct cudaMemcpy3DPeerParms'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy3DPeer')
ans
}


cudaMemcpy3DAsync <-
function( p , stream  )
{
ans = .Call('R_auto_cudaMemcpy3DAsync', as(p, 'struct cudaMemcpy3DParms'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy3DAsync')
ans
}


cudaMemcpy3DPeerAsync <-
function( p , stream  )
{
ans = .Call('R_auto_cudaMemcpy3DPeerAsync', as(p, 'struct cudaMemcpy3DPeerParms'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy3DPeerAsync')
ans
}


cudaMemGetInfo <-
function(  )
{
ans = .Call('R_auto_cudaMemGetInfo')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemGetInfo')
ans
}


cudaMemcpy <-
function( dst , src , count , kind  )
{
ans = .Call('R_auto_cudaMemcpy', as(dst, 'void'), as(src, 'void'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy')
ans
}


cudaMemcpyPeer <-
function( dst , dstDevice , src , srcDevice , count  )
{
ans = .Call('R_auto_cudaMemcpyPeer', as(dst, 'void'), as(dstDevice, 'integer'), as(src, 'void'), as(srcDevice, 'integer'), as(count, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyPeer')
ans
}


cudaMemcpyToArray <-
function( dst , wOffset , hOffset , src , count , kind  )
{
ans = .Call('R_auto_cudaMemcpyToArray', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'void'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyToArray')
ans
}


cudaMemcpyFromArray <-
function( dst , src , wOffset , hOffset , count , kind  )
{
ans = .Call('R_auto_cudaMemcpyFromArray', as(dst, 'void'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyFromArray')
ans
}


cudaMemcpyArrayToArray <-
function( dst , wOffsetDst , hOffsetDst , src , wOffsetSrc , hOffsetSrc , count , kind  )
{
ans = .Call('R_auto_cudaMemcpyArrayToArray', as(dst, 'cudaArray_t'), as(wOffsetDst, 'size_t'), as(hOffsetDst, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffsetSrc, 'size_t'), as(hOffsetSrc, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyArrayToArray')
ans
}

cudaMemcpy2D <-
function( dst, dpitch, src, spitch, width, height, kind )
{
ans = .Call('R_auto_cudaMemcpy2D', as(dst, 'voidPtr'), as(dpitch, 'size_t'), as(src, 'voidPtr'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'cudaError_t') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2D')
ans
} 



cudaMemcpy2DToArray <-
function( dst , wOffset , hOffset , src , spitch , width , height , kind  )
{
ans = .Call('R_auto_cudaMemcpy2DToArray', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'void'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DToArray')
ans
}


cudaMemcpy2DFromArray <-
function( dst , dpitch , src , wOffset , hOffset , width , height , kind  )
{
ans = .Call('R_auto_cudaMemcpy2DFromArray', as(dst, 'void'), as(dpitch, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DFromArray')
ans
}


cudaMemcpy2DArrayToArray <-
function( dst , wOffsetDst , hOffsetDst , src , wOffsetSrc , hOffsetSrc , width , height , kind  )
{
ans = .Call('R_auto_cudaMemcpy2DArrayToArray', as(dst, 'cudaArray_t'), as(wOffsetDst, 'size_t'), as(hOffsetDst, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffsetSrc, 'size_t'), as(hOffsetSrc, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DArrayToArray')
ans
}


cudaMemcpyToSymbol <-
function( symbol , src , count , offset , kind  )
{
ans = .Call('R_auto_cudaMemcpyToSymbol', as(symbol, 'void'), as(src, 'void'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyToSymbol')
ans
}


cudaMemcpyFromSymbol <-
function( dst , symbol , count , offset , kind  )
{
ans = .Call('R_auto_cudaMemcpyFromSymbol', as(dst, 'void'), as(symbol, 'void'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyFromSymbol')
ans
}


cudaMemcpyAsync <-
function( dst , src , count , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpyAsync', as(dst, 'void'), as(src, 'void'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyAsync')
ans
}


cudaMemcpyPeerAsync <-
function( dst , dstDevice , src , srcDevice , count , stream  )
{
ans = .Call('R_auto_cudaMemcpyPeerAsync', as(dst, 'void'), as(dstDevice, 'integer'), as(src, 'void'), as(srcDevice, 'integer'), as(count, 'size_t'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyPeerAsync')
ans
}


cudaMemcpyToArrayAsync <-
function( dst , wOffset , hOffset , src , count , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpyToArrayAsync', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'void'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyToArrayAsync')
ans
}


cudaMemcpyFromArrayAsync <-
function( dst , src , wOffset , hOffset , count , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpyFromArrayAsync', as(dst, 'void'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyFromArrayAsync')
ans
}


cudaMemcpy2DAsync <-
function( dst , dpitch , src , spitch , width , height , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpy2DAsync', as(dst, 'void'), as(dpitch, 'size_t'), as(src, 'void'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DAsync')
ans
}


cudaMemcpy2DToArrayAsync <-
function( dst , wOffset , hOffset , src , spitch , width , height , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpy2DToArrayAsync', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'void'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DToArrayAsync')
ans
}


cudaMemcpy2DFromArrayAsync <-
function( dst , dpitch , src , wOffset , hOffset , width , height , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpy2DFromArrayAsync', as(dst, 'void'), as(dpitch, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpy2DFromArrayAsync')
ans
}


cudaMemcpyToSymbolAsync <-
function( symbol , src , count , offset , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpyToSymbolAsync', as(symbol, 'void'), as(src, 'void'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyToSymbolAsync')
ans
}


cudaMemcpyFromSymbolAsync <-
function( dst , symbol , count , offset , kind , stream  )
{
ans = .Call('R_auto_cudaMemcpyFromSymbolAsync', as(dst, 'void'), as(symbol, 'void'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemcpyFromSymbolAsync')
ans
}


cudaMemset <-
function( devPtr , value , count  )
{
ans = .Call('R_auto_cudaMemset', as(devPtr, 'void'), as(value, 'integer'), as(count, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemset')
ans
}


cudaMemset2D <-
function( devPtr , pitch , value , width , height  )
{
ans = .Call('R_auto_cudaMemset2D', as(devPtr, 'void'), as(pitch, 'size_t'), as(value, 'integer'), as(width, 'size_t'), as(height, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemset2D')
ans
}


cudaMemset3D <-
function( pitchedDevPtr , value , extent  )
{
ans = .Call('R_auto_cudaMemset3D', as(pitchedDevPtr, 'cudaPitchedPtr'), as(value, 'integer'), as(extent, 'cudaExtent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemset3D')
ans
}


cudaMemsetAsync <-
function( devPtr , value , count , stream  )
{
ans = .Call('R_auto_cudaMemsetAsync', as(devPtr, 'void'), as(value, 'integer'), as(count, 'size_t'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemsetAsync')
ans
}


cudaMemset2DAsync <-
function( devPtr , pitch , value , width , height , stream  )
{
ans = .Call('R_auto_cudaMemset2DAsync', as(devPtr, 'void'), as(pitch, 'size_t'), as(value, 'integer'), as(width, 'size_t'), as(height, 'size_t'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemset2DAsync')
ans
}


cudaMemset3DAsync <-
function( pitchedDevPtr , value , extent , stream  )
{
ans = .Call('R_auto_cudaMemset3DAsync', as(pitchedDevPtr, 'cudaPitchedPtr'), as(value, 'integer'), as(extent, 'cudaExtent'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMemset3DAsync')
ans
}
