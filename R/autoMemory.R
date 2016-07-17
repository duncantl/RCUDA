# Generated programmatically at 2016-07-17 12:39:46 


cuMemGetInfo <-
function(  )
{
    ans = .Call('R_cuMemGetInfo_v2')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemGetInfo_v2')
    ans
}


cuMemAlloc <-
function( bytesize )
{
    ans = .Call('R_cuMemAlloc_v2', as(bytesize, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemAlloc_v2')
    ans
}


cuMemAllocPitch <-
function( WidthInBytes, Height, ElementSizeBytes )
{
    ans = .Call('R_cuMemAllocPitch_v2', as(WidthInBytes, 'size_t'), as(Height, 'size_t'), as(ElementSizeBytes, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemAllocPitch_v2')
    ans
}


cuMemFree <-
function( dptr )
{
    ans = .Call('R_cuMemFree_v2', as(dptr, 'CUdeviceptr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemFree_v2')
    ans
}


cuMemGetAddressRange <-
function( dptr )
{
    ans = .Call('R_cuMemGetAddressRange_v2', as(dptr, 'CUdeviceptr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemGetAddressRange_v2')
    ans
}


cuMemAllocHost <-
function( bytesize )
{
    ans = .Call('R_cuMemAllocHost_v2', as(bytesize, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemAllocHost_v2')
    ans
}


cuMemFreeHost <-
function( p )
{
    ans = .Call('R_cuMemFreeHost', as(p, 'voidPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemFreeHost')
    ans
}


cuMemHostAlloc <-
function( bytesize, Flags )
{
    ans = .Call('R_cuMemHostAlloc', as(bytesize, 'size_t'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemHostAlloc')
    ans
}


cuMemHostGetDevicePointer <-
function( p, Flags )
{
    ans = .Call('R_cuMemHostGetDevicePointer_v2', as(p, 'voidPtr'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemHostGetDevicePointer_v2')
    ans
}


cuMemHostGetFlags <-
function( p )
{
    ans = .Call('R_cuMemHostGetFlags', as(p, 'voidPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemHostGetFlags')
    ans
}


cuMemAllocManaged <-
function( bytesize, flags )
{
    ans = .Call('R_cuMemAllocManaged', as(bytesize, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemAllocManaged')
    ans
}


cuMemHostRegister <-
function( p, bytesize, Flags )
{
    ans = .Call('R_cuMemHostRegister_v2', as(p, 'voidPtr'), as(bytesize, 'size_t'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemHostRegister_v2')
    ans
}


cuMemHostUnregister <-
function( p )
{
    ans = .Call('R_cuMemHostUnregister', as(p, 'voidPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemHostUnregister')
    ans
}


cuMemcpyPeer <-
function( dstDevice, dstContext, srcDevice, srcContext, ByteCount )
{
    ans = .Call('R_cuMemcpyPeer', as(dstDevice, 'CUdeviceptr'), as(dstContext, 'CUcontext'), as(srcDevice, 'CUdeviceptr'), as(srcContext, 'CUcontext'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyPeer')
    ans
}


cuMemcpyHtoD <-
function( dstDevice, srcHost, ByteCount )
{
    ans = .Call('R_cuMemcpyHtoD_v2', as(dstDevice, 'CUdeviceptr'), as(srcHost, 'voidPtr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyHtoD_v2')
    ans
}


cuMemcpyDtoH <-
function( dstHost, srcDevice, ByteCount )
{
    ans = .Call('R_cuMemcpyDtoH_v2', as(dstHost, 'voidPtr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyDtoH_v2')
    ans
}


cuMemcpyDtoD <-
function( dstDevice, srcDevice, ByteCount )
{
    ans = .Call('R_cuMemcpyDtoD_v2', as(dstDevice, 'CUdeviceptr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyDtoD_v2')
    ans
}


cuMemcpyDtoA <-
function( dstArray, dstOffset, srcDevice, ByteCount )
{
    ans = .Call('R_cuMemcpyDtoA_v2', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyDtoA_v2')
    ans
}


cuMemcpyAtoD <-
function( dstDevice, srcArray, srcOffset, ByteCount )
{
    ans = .Call('R_cuMemcpyAtoD_v2', as(dstDevice, 'CUdeviceptr'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyAtoD_v2')
    ans
}


cuMemcpyHtoA <-
function( dstArray, dstOffset, srcHost, ByteCount )
{
    ans = .Call('R_cuMemcpyHtoA_v2', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcHost, 'voidPtr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyHtoA_v2')
    ans
}


cuMemcpyAtoH <-
function( dstHost, srcArray, srcOffset, ByteCount )
{
    ans = .Call('R_cuMemcpyAtoH_v2', as(dstHost, 'voidPtr'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyAtoH_v2')
    ans
}


cuMemcpyAtoA <-
function( dstArray, dstOffset, srcArray, srcOffset, ByteCount )
{
    ans = .Call('R_cuMemcpyAtoA_v2', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyAtoA_v2')
    ans
}


cuMemcpy2D <-
function( pCopy )
{
    ans = .Call('R_cuMemcpy2D_v2', as(pCopy, 'CUDA_MEMCPY2DPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy2D_v2')
    ans
}


cuMemcpy2DUnaligned <-
function( pCopy )
{
    ans = .Call('R_cuMemcpy2DUnaligned_v2', as(pCopy, 'CUDA_MEMCPY2DPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy2DUnaligned_v2')
    ans
}


cuMemcpy3D <-
function( pCopy )
{
    ans = .Call('R_cuMemcpy3D_v2', as(pCopy, 'CUDA_MEMCPY3DPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy3D_v2')
    ans
}


cuMemcpy3DPeer <-
function( pCopy )
{
    ans = .Call('R_cuMemcpy3DPeer', as(pCopy, 'CUDA_MEMCPY3D_PEERPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy3DPeer')
    ans
}


cuMemcpyAsync <-
function( dst, src, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyAsync', as(dst, 'CUdeviceptr'), as(src, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyAsync')
    ans
}


cuMemcpyPeerAsync <-
function( dstDevice, dstContext, srcDevice, srcContext, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyPeerAsync', as(dstDevice, 'CUdeviceptr'), as(dstContext, 'CUcontext'), as(srcDevice, 'CUdeviceptr'), as(srcContext, 'CUcontext'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyPeerAsync')
    ans
}


cuMemcpyHtoDAsync <-
function( dstDevice, srcHost, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyHtoDAsync_v2', as(dstDevice, 'CUdeviceptr'), as(srcHost, 'voidPtr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyHtoDAsync_v2')
    ans
}


cuMemcpyDtoHAsync <-
function( dstHost, srcDevice, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyDtoHAsync_v2', as(dstHost, 'voidPtr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyDtoHAsync_v2')
    ans
}


cuMemcpyDtoDAsync <-
function( dstDevice, srcDevice, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyDtoDAsync_v2', as(dstDevice, 'CUdeviceptr'), as(srcDevice, 'CUdeviceptr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyDtoDAsync_v2')
    ans
}


cuMemcpyHtoAAsync <-
function( dstArray, dstOffset, srcHost, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyHtoAAsync_v2', as(dstArray, 'CUarray'), as(dstOffset, 'size_t'), as(srcHost, 'voidPtr'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyHtoAAsync_v2')
    ans
}


cuMemcpyAtoHAsync <-
function( dstHost, srcArray, srcOffset, ByteCount, hStream )
{
    ans = .Call('R_cuMemcpyAtoHAsync_v2', as(dstHost, 'voidPtr'), as(srcArray, 'CUarray'), as(srcOffset, 'size_t'), as(ByteCount, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpyAtoHAsync_v2')
    ans
}


cuMemcpy2DAsync <-
function( pCopy, hStream )
{
    ans = .Call('R_cuMemcpy2DAsync_v2', as(pCopy, 'CUDA_MEMCPY2DPtr'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy2DAsync_v2')
    ans
}


cuMemcpy3DAsync <-
function( pCopy, hStream )
{
    ans = .Call('R_cuMemcpy3DAsync_v2', as(pCopy, 'CUDA_MEMCPY3DPtr'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy3DAsync_v2')
    ans
}


cuMemcpy3DPeerAsync <-
function( pCopy, hStream )
{
    ans = .Call('R_cuMemcpy3DPeerAsync', as(pCopy, 'CUDA_MEMCPY3D_PEERPtr'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy3DPeerAsync')
    ans
}


cuMemsetD8 <-
function( dstDevice, uc, N )
{
    ans = .Call('R_cuMemsetD8_v2', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD8_v2')
    ans
}


cuMemsetD16 <-
function( dstDevice, us, N )
{
    ans = .Call('R_cuMemsetD16_v2', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD16_v2')
    ans
}


cuMemsetD32 <-
function( dstDevice, ui, N )
{
    ans = .Call('R_cuMemsetD32_v2', as(dstDevice, 'CUdeviceptr'), as(ui, 'numeric'), as(N, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD32_v2')
    ans
}


cuMemsetD2D8 <-
function( dstDevice, dstPitch, uc, Width, Height )
{
    ans = .Call('R_cuMemsetD2D8_v2', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D8_v2')
    ans
}


cuMemsetD2D16 <-
function( dstDevice, dstPitch, us, Width, Height )
{
    ans = .Call('R_cuMemsetD2D16_v2', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D16_v2')
    ans
}


cuMemsetD2D32 <-
function( dstDevice, dstPitch, ui, Width, Height )
{
    ans = .Call('R_cuMemsetD2D32_v2', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(ui, 'numeric'), as(Width, 'size_t'), as(Height, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D32_v2')
    ans
}


cuMemsetD8Async <-
function( dstDevice, uc, N, hStream )
{
    ans = .Call('R_cuMemsetD8Async', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD8Async')
    ans
}


cuMemsetD16Async <-
function( dstDevice, us, N, hStream )
{
    ans = .Call('R_cuMemsetD16Async', as(dstDevice, 'CUdeviceptr'), as(N, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD16Async')
    ans
}


cuMemsetD32Async <-
function( dstDevice, ui, N, hStream )
{
    ans = .Call('R_cuMemsetD32Async', as(dstDevice, 'CUdeviceptr'), as(ui, 'numeric'), as(N, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD32Async')
    ans
}


cuMemsetD2D8Async <-
function( dstDevice, dstPitch, uc, Width, Height, hStream )
{
    ans = .Call('R_cuMemsetD2D8Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D8Async')
    ans
}


cuMemsetD2D16Async <-
function( dstDevice, dstPitch, us, Width, Height, hStream )
{
    ans = .Call('R_cuMemsetD2D16Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D16Async')
    ans
}


cuMemsetD2D32Async <-
function( dstDevice, dstPitch, ui, Width, Height, hStream )
{
    ans = .Call('R_cuMemsetD2D32Async', as(dstDevice, 'CUdeviceptr'), as(dstPitch, 'size_t'), as(ui, 'numeric'), as(Width, 'size_t'), as(Height, 'size_t'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemsetD2D32Async')
    ans
}


cudaMemcpy3D <-
function( p )
{
    ans = .Call('R_cudaMemcpy3D', as(p, 'struct cudaMemcpy3DParmsPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy3D')
    ans
}


cudaMemcpy3DPeer <-
function( p )
{
    ans = .Call('R_cudaMemcpy3DPeer', as(p, 'struct cudaMemcpy3DPeerParmsPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy3DPeer')
    ans
}


cudaMemcpy3DAsync <-
function( p, stream )
{
    ans = .Call('R_cudaMemcpy3DAsync', as(p, 'struct cudaMemcpy3DParmsPtr'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy3DAsync')
    ans
}


cudaMemcpy3DPeerAsync <-
function( p, stream )
{
    ans = .Call('R_cudaMemcpy3DPeerAsync', as(p, 'struct cudaMemcpy3DPeerParmsPtr'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy3DPeerAsync')
    ans
}


cudaMemcpy <-
function( dst, src, count, kind )
{
    ans = .Call('R_cudaMemcpy', as(dst, 'voidPtr'), as(src, 'voidPtr'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy')
    ans
}


cudaMemcpyPeer <-
function( dst, dstDevice, src, srcDevice, count )
{
    ans = .Call('R_cudaMemcpyPeer', as(dst, 'voidPtr'), as(dstDevice, 'integer'), as(src, 'voidPtr'), as(srcDevice, 'integer'), as(count, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyPeer')
    ans
}


cudaMemcpyToArray <-
function( dst, wOffset, hOffset, src, count, kind )
{
    ans = .Call('R_cudaMemcpyToArray', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'voidPtr'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyToArray')
    ans
}


cudaMemcpyFromArray <-
function( dst, src, wOffset, hOffset, count, kind )
{
    ans = .Call('R_cudaMemcpyFromArray', as(dst, 'voidPtr'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyFromArray')
    ans
}


cudaMemcpyArrayToArray <-
function( dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, count, kind )
{
    ans = .Call('R_cudaMemcpyArrayToArray', as(dst, 'cudaArray_t'), as(wOffsetDst, 'size_t'), as(hOffsetDst, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffsetSrc, 'size_t'), as(hOffsetSrc, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyArrayToArray')
    ans
}


cudaMemcpy2D <-
function( dst, dpitch, src, spitch, width, height, kind )
{
    ans = .Call('R_cudaMemcpy2D', as(dst, 'voidPtr'), as(dpitch, 'size_t'), as(src, 'voidPtr'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2D')
    ans
}


cudaMemcpy2DToArray <-
function( dst, wOffset, hOffset, src, spitch, width, height, kind )
{
    ans = .Call('R_cudaMemcpy2DToArray', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'voidPtr'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DToArray')
    ans
}


cudaMemcpy2DFromArray <-
function( dst, dpitch, src, wOffset, hOffset, width, height, kind )
{
    ans = .Call('R_cudaMemcpy2DFromArray', as(dst, 'voidPtr'), as(dpitch, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DFromArray')
    ans
}


cudaMemcpy2DArrayToArray <-
function( dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, width, height, kind )
{
    ans = .Call('R_cudaMemcpy2DArrayToArray', as(dst, 'cudaArray_t'), as(wOffsetDst, 'size_t'), as(hOffsetDst, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffsetSrc, 'size_t'), as(hOffsetSrc, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DArrayToArray')
    ans
}


cudaMemcpyToSymbol <-
function( symbol, src, count, offset, kind )
{
    ans = .Call('R_cudaMemcpyToSymbol', as(symbol, 'voidPtr'), as(src, 'voidPtr'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyToSymbol')
    ans
}


cudaMemcpyFromSymbol <-
function( dst, symbol, count, offset, kind )
{
    ans = .Call('R_cudaMemcpyFromSymbol', as(dst, 'voidPtr'), as(symbol, 'voidPtr'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyFromSymbol')
    ans
}


cudaMemcpyAsync <-
function( dst, src, count, kind, stream )
{
    ans = .Call('R_cudaMemcpyAsync', as(dst, 'voidPtr'), as(src, 'voidPtr'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyAsync')
    ans
}


cudaMemcpyPeerAsync <-
function( dst, dstDevice, src, srcDevice, count, stream )
{
    ans = .Call('R_cudaMemcpyPeerAsync', as(dst, 'voidPtr'), as(dstDevice, 'integer'), as(src, 'voidPtr'), as(srcDevice, 'integer'), as(count, 'size_t'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyPeerAsync')
    ans
}


cudaMemcpyToArrayAsync <-
function( dst, wOffset, hOffset, src, count, kind, stream )
{
    ans = .Call('R_cudaMemcpyToArrayAsync', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'voidPtr'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyToArrayAsync')
    ans
}


cudaMemcpyFromArrayAsync <-
function( dst, src, wOffset, hOffset, count, kind, stream )
{
    ans = .Call('R_cudaMemcpyFromArrayAsync', as(dst, 'voidPtr'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(count, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyFromArrayAsync')
    ans
}


cudaMemcpy2DAsync <-
function( dst, dpitch, src, spitch, width, height, kind, stream )
{
    ans = .Call('R_cudaMemcpy2DAsync', as(dst, 'voidPtr'), as(dpitch, 'size_t'), as(src, 'voidPtr'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DAsync')
    ans
}


cudaMemcpy2DToArrayAsync <-
function( dst, wOffset, hOffset, src, spitch, width, height, kind, stream )
{
    ans = .Call('R_cudaMemcpy2DToArrayAsync', as(dst, 'cudaArray_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(src, 'voidPtr'), as(spitch, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DToArrayAsync')
    ans
}


cudaMemcpy2DFromArrayAsync <-
function( dst, dpitch, src, wOffset, hOffset, width, height, kind, stream )
{
    ans = .Call('R_cudaMemcpy2DFromArrayAsync', as(dst, 'voidPtr'), as(dpitch, 'size_t'), as(src, 'cudaArray_const_t'), as(wOffset, 'size_t'), as(hOffset, 'size_t'), as(width, 'size_t'), as(height, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpy2DFromArrayAsync')
    ans
}


cudaMemcpyToSymbolAsync <-
function( symbol, src, count, offset, kind, stream )
{
    ans = .Call('R_cudaMemcpyToSymbolAsync', as(symbol, 'voidPtr'), as(src, 'voidPtr'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyToSymbolAsync')
    ans
}


cudaMemcpyFromSymbolAsync <-
function( dst, symbol, count, offset, kind, stream )
{
    ans = .Call('R_cudaMemcpyFromSymbolAsync', as(dst, 'voidPtr'), as(symbol, 'voidPtr'), as(count, 'size_t'), as(offset, 'size_t'), as(kind, 'cudaMemcpyKind'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemcpyFromSymbolAsync')
    ans
}


cudaMemset <-
function( devPtr, value, count )
{
    ans = .Call('R_cudaMemset', as(devPtr, 'voidPtr'), as(value, 'integer'), as(count, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemset')
    ans
}


cudaMemset2D <-
function( devPtr, pitch, value, width, height )
{
    ans = .Call('R_cudaMemset2D', as(devPtr, 'voidPtr'), as(pitch, 'size_t'), as(value, 'integer'), as(width, 'size_t'), as(height, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemset2D')
    ans
}


cudaMemset3D <-
function( pitchedDevPtr, value, extent )
{
    ans = .Call('R_cudaMemset3D', as(pitchedDevPtr, 'cudaPitchedPtr'), as(value, 'integer'), as(extent, 'cudaExtent'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemset3D')
    ans
}


cudaMemsetAsync <-
function( devPtr, value, count, stream )
{
    ans = .Call('R_cudaMemsetAsync', as(devPtr, 'voidPtr'), as(value, 'integer'), as(count, 'size_t'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemsetAsync')
    ans
}


cudaMemset2DAsync <-
function( devPtr, pitch, value, width, height, stream )
{
    ans = .Call('R_cudaMemset2DAsync', as(devPtr, 'voidPtr'), as(pitch, 'size_t'), as(value, 'integer'), as(width, 'size_t'), as(height, 'size_t'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemset2DAsync')
    ans
}


cudaMemset3DAsync <-
function( pitchedDevPtr, value, extent, stream )
{
    ans = .Call('R_cudaMemset3DAsync', as(pitchedDevPtr, 'cudaPitchedPtr'), as(value, 'integer'), as(extent, 'cudaExtent'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemset3DAsync')
    ans
}
