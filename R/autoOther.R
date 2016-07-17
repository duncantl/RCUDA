# Generated programmatically at 2016-07-17 12:39:47 


cuGetErrorString <-
function( error )
{
    ans = .Call('R_cuGetErrorString', as(error, 'CUresult'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGetErrorString')
    ans
}


cuGetErrorName <-
function( error )
{
    ans = .Call('R_cuGetErrorName', as(error, 'CUresult'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGetErrorName')
    ans
}


cuLinkCreate <-
function( numOptions )
{
    ans = .Call('R_cuLinkCreate_v2', as(numOptions, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuLinkCreate_v2')
    ans
}


cuLinkAddData <-
function( state, type, data, size, name, numOptions )
{
    ans = .Call('R_cuLinkAddData_v2', as(state, 'CUlinkState'), as(type, 'CUjitInputType'), as(data, 'voidPtr'), as(size, 'size_t'), as(name, 'character'), as(numOptions, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuLinkAddData_v2')
    ans
}


cuLinkAddFile <-
function( state, type, path, numOptions )
{
    ans = .Call('R_cuLinkAddFile_v2', as(state, 'CUlinkState'), as(type, 'CUjitInputType'), as(path, 'character'), as(numOptions, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuLinkAddFile_v2')
    ans
}


cuLinkComplete <-
function( state )
{
    ans = .Call('R_cuLinkComplete', as(state, 'CUlinkState'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuLinkComplete')
    ans
}


cuLinkDestroy <-
function( state )
{
    ans = .Call('R_cuLinkDestroy', as(state, 'CUlinkState'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuLinkDestroy')
    ans
}


cuMemcpy <-
function( dst, src, ByteCount )
{
    ans = .Call('R_cuMemcpy', as(dst, 'CUdeviceptr'), as(src, 'CUdeviceptr'), as(ByteCount, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuMemcpy')
    ans
}


cuArrayCreate <-
function( pAllocateArray )
{
    ans = .Call('R_cuArrayCreate_v2', as(pAllocateArray, 'CUDA_ARRAY_DESCRIPTORPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuArrayCreate_v2')
    ans
}


cuArrayGetDescriptor <-
function( hArray )
{
    ans = .Call('R_cuArrayGetDescriptor_v2', as(hArray, 'CUarray'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuArrayGetDescriptor_v2')
    ans
}


cuArrayDestroy <-
function( hArray )
{
    ans = .Call('R_cuArrayDestroy', as(hArray, 'CUarray'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuArrayDestroy')
    ans
}


cuArray3DCreate <-
function( pAllocateArray )
{
    ans = .Call('R_cuArray3DCreate_v2', as(pAllocateArray, 'CUDA_ARRAY3D_DESCRIPTORPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuArray3DCreate_v2')
    ans
}


cuArray3DGetDescriptor <-
function( hArray )
{
    ans = .Call('R_cuArray3DGetDescriptor_v2', as(hArray, 'CUarray'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuArray3DGetDescriptor_v2')
    ans
}


cuPointerGetAttribute <-
function( data, attribute, ptr )
{
    ans = .Call('R_cuPointerGetAttribute', as(data, 'voidPtr'), as(attribute, 'CUpointer_attribute'), as(ptr, 'CUdeviceptr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuPointerGetAttribute')
    ans
}


cuPointerSetAttribute <-
function( value, attribute, ptr )
{
    ans = .Call('R_cuPointerSetAttribute', as(value, 'voidPtr'), as(attribute, 'CUpointer_attribute'), as(ptr, 'CUdeviceptr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuPointerSetAttribute')
    ans
}


cuPointerGetAttributes <-
function( numAttributes, ptr )
{
    ans = .Call('R_cuPointerGetAttributes', as(numAttributes, 'numeric'), as(ptr, 'CUdeviceptr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuPointerGetAttributes')
    ans
}


cuOccupancyMaxActiveBlocksPerMultiprocessor <-
function( func, blockSize, dynamicSMemSize )
{
    ans = .Call('R_cuOccupancyMaxActiveBlocksPerMultiprocessor', as(func, 'CUfunction'), as(blockSize, 'integer'), as(dynamicSMemSize, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuOccupancyMaxActiveBlocksPerMultiprocessor')
    ans
}


cuOccupancyMaxActiveBlocksPerMultiprocessorWithFlags <-
function( func, blockSize, dynamicSMemSize, flags )
{
    ans = .Call('R_cuOccupancyMaxActiveBlocksPerMultiprocessorWithFlags', as(func, 'CUfunction'), as(blockSize, 'integer'), as(dynamicSMemSize, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuOccupancyMaxActiveBlocksPerMultiprocessorWithFlags')
    ans
}


cuOccupancyMaxPotentialBlockSize <-
function( func, blockSizeToDynamicSMemSize, dynamicSMemSize, blockSizeLimit )
{
    ans = .Call('R_cuOccupancyMaxPotentialBlockSize', as(func, 'CUfunction'), as(blockSizeToDynamicSMemSize, 'CUoccupancyB2DSize'), as(dynamicSMemSize, 'size_t'), as(blockSizeLimit, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuOccupancyMaxPotentialBlockSize')
    ans
}


cuOccupancyMaxPotentialBlockSizeWithFlags <-
function( func, blockSizeToDynamicSMemSize, dynamicSMemSize, blockSizeLimit, flags )
{
    ans = .Call('R_cuOccupancyMaxPotentialBlockSizeWithFlags', as(func, 'CUfunction'), as(blockSizeToDynamicSMemSize, 'CUoccupancyB2DSize'), as(dynamicSMemSize, 'size_t'), as(blockSizeLimit, 'integer'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuOccupancyMaxPotentialBlockSizeWithFlags')
    ans
}


cuGraphicsUnregisterResource <-
function( resource )
{
    ans = .Call('R_cuGraphicsUnregisterResource', as(resource, 'CUgraphicsResource'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsUnregisterResource')
    ans
}


cuGraphicsSubResourceGetMappedArray <-
function( resource, arrayIndex, mipLevel )
{
    ans = .Call('R_cuGraphicsSubResourceGetMappedArray', as(resource, 'CUgraphicsResource'), as(arrayIndex, 'numeric'), as(mipLevel, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsSubResourceGetMappedArray')
    ans
}


cuGraphicsResourceGetMappedPointer <-
function( resource )
{
    ans = .Call('R_cuGraphicsResourceGetMappedPointer_v2', as(resource, 'CUgraphicsResource'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsResourceGetMappedPointer_v2')
    ans
}


cuGraphicsResourceSetMapFlags <-
function( resource, flags )
{
    ans = .Call('R_cuGraphicsResourceSetMapFlags_v2', as(resource, 'CUgraphicsResource'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsResourceSetMapFlags_v2')
    ans
}


cuGraphicsMapResources <-
function( count, hStream )
{
    ans = .Call('R_cuGraphicsMapResources', as(count, 'numeric'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsMapResources')
    ans
}


cuGraphicsUnmapResources <-
function( count, hStream )
{
    ans = .Call('R_cuGraphicsUnmapResources', as(count, 'numeric'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuGraphicsUnmapResources')
    ans
}


cudaPeekAtLastError <-
function(  )
{
    ans = .Call('R_cudaPeekAtLastError')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaPeekAtLastError')
    ans
}


cudaGetErrorName <-
function( error )
{
    ans = .Call('R_cudaGetErrorName', as(error, 'cudaError_t'))
    if(is(ans, 'const char *') && ans != 0)
        raiseError(ans, 'R_cudaGetErrorName')
    ans
}


cudaChooseDevice <-
function( prop )
{
    ans = .Call('R_cudaChooseDevice', as(prop, 'struct cudaDevicePropPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaChooseDevice')
    ans
}


cudaGetDevice <-
function(  )
{
    ans = .Call('R_cudaGetDevice')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGetDevice')
    ans
}


cudaSetValidDevices <-
function( device_arr, len )
{
    ans = .Call('R_cudaSetValidDevices', as(device_arr, 'integer'), as(len, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaSetValidDevices')
    ans
}


cudaSetDeviceFlags <-
function( flags )
{
    ans = .Call('R_cudaSetDeviceFlags', as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaSetDeviceFlags')
    ans
}


cudaGetDeviceFlags <-
function(  )
{
    ans = .Call('R_cudaGetDeviceFlags')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGetDeviceFlags')
    ans
}


cudaLaunchKernel <-
function( func, gridDim, blockDim, sharedMem, stream )
{
    ans = .Call('R_cudaLaunchKernel', as(func, 'voidPtr'), as(gridDim, 'dim3'), as(blockDim, 'dim3'), as(sharedMem, 'size_t'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaLaunchKernel')
    ans
}


cudaSetDoubleForDevice <-
function(  )
{
    ans = .Call('R_cudaSetDoubleForDevice')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaSetDoubleForDevice')
    ans
}


cudaSetDoubleForHost <-
function(  )
{
    ans = .Call('R_cudaSetDoubleForHost')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaSetDoubleForHost')
    ans
}


cudaOccupancyMaxActiveBlocksPerMultiprocessor <-
function( func, blockSize, dynamicSMemSize )
{
    ans = .Call('R_cudaOccupancyMaxActiveBlocksPerMultiprocessor', as(func, 'voidPtr'), as(blockSize, 'integer'), as(dynamicSMemSize, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaOccupancyMaxActiveBlocksPerMultiprocessor')
    ans
}


cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags <-
function( func, blockSize, dynamicSMemSize, flags )
{
    ans = .Call('R_cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags', as(func, 'voidPtr'), as(blockSize, 'integer'), as(dynamicSMemSize, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags')
    ans
}


cudaLaunch <-
function( func )
{
    ans = .Call('R_cudaLaunch', as(func, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaLaunch')
    ans
}


cudaMallocManaged <-
function( size, flags )
{
    ans = .Call('R_cudaMallocManaged', as(size, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMallocManaged')
    ans
}


cudaMallocHost <-
function( size )
{
    ans = .Call('R_cudaMallocHost', as(size, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMallocHost')
    ans
}


cudaMallocPitch <-
function( width, height )
{
    ans = .Call('R_cudaMallocPitch', as(width, 'size_t'), as(height, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMallocPitch')
    ans
}


cudaMallocArray <-
function( desc, width, height, flags )
{
    ans = .Call('R_cudaMallocArray', as(desc, 'struct cudaChannelFormatDescPtr'), as(width, 'size_t'), as(height, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMallocArray')
    ans
}


cudaFreeHost <-
function( ptr )
{
    ans = .Call('R_cudaFreeHost', as(ptr, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaFreeHost')
    ans
}


cudaFreeArray <-
function( array )
{
    ans = .Call('R_cudaFreeArray', as(array, 'cudaArray_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaFreeArray')
    ans
}


cudaHostAlloc <-
function( size, flags )
{
    ans = .Call('R_cudaHostAlloc', as(size, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaHostAlloc')
    ans
}


cudaHostRegister <-
function( ptr, size, flags )
{
    ans = .Call('R_cudaHostRegister', as(ptr, 'voidPtr'), as(size, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaHostRegister')
    ans
}


cudaHostUnregister <-
function( ptr )
{
    ans = .Call('R_cudaHostUnregister', as(ptr, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaHostUnregister')
    ans
}


cudaHostGetDevicePointer <-
function( pHost, flags )
{
    ans = .Call('R_cudaHostGetDevicePointer', as(pHost, 'voidPtr'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaHostGetDevicePointer')
    ans
}


cudaHostGetFlags <-
function( pHost )
{
    ans = .Call('R_cudaHostGetFlags', as(pHost, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaHostGetFlags')
    ans
}


cudaMalloc3D <-
function( extent )
{
    ans = .Call('R_cudaMalloc3D', as(extent, 'cudaExtent'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMalloc3D')
    ans
}


cudaMalloc3DArray <-
function( desc, extent, flags )
{
    ans = .Call('R_cudaMalloc3DArray', as(desc, 'struct cudaChannelFormatDescPtr'), as(extent, 'cudaExtent'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMalloc3DArray')
    ans
}


cudaMemGetInfo <-
function(  )
{
    ans = .Call('R_cudaMemGetInfo')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaMemGetInfo')
    ans
}


cudaArrayGetInfo <-
function( array )
{
    ans = .Call('R_cudaArrayGetInfo', as(array, 'cudaArray_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaArrayGetInfo')
    ans
}


cudaGetSymbolAddress <-
function( symbol )
{
    ans = .Call('R_cudaGetSymbolAddress', as(symbol, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGetSymbolAddress')
    ans
}


cudaGetSymbolSize <-
function( symbol )
{
    ans = .Call('R_cudaGetSymbolSize', as(symbol, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGetSymbolSize')
    ans
}


cudaPointerGetAttributes <-
function( ptr )
{
    ans = .Call('R_cudaPointerGetAttributes', as(ptr, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaPointerGetAttributes')
    ans
}


cudaGraphicsUnregisterResource <-
function( resource )
{
    ans = .Call('R_cudaGraphicsUnregisterResource', as(resource, 'cudaGraphicsResource_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsUnregisterResource')
    ans
}


cudaGraphicsResourceSetMapFlags <-
function( resource, flags )
{
    ans = .Call('R_cudaGraphicsResourceSetMapFlags', as(resource, 'cudaGraphicsResource_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsResourceSetMapFlags')
    ans
}


cudaGraphicsMapResources <-
function( count, stream )
{
    ans = .Call('R_cudaGraphicsMapResources', as(count, 'integer'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsMapResources')
    ans
}


cudaGraphicsUnmapResources <-
function( count, stream )
{
    ans = .Call('R_cudaGraphicsUnmapResources', as(count, 'integer'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsUnmapResources')
    ans
}


cudaGraphicsResourceGetMappedPointer <-
function( resource )
{
    ans = .Call('R_cudaGraphicsResourceGetMappedPointer', as(resource, 'cudaGraphicsResource_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsResourceGetMappedPointer')
    ans
}


cudaGraphicsSubResourceGetMappedArray <-
function( resource, arrayIndex, mipLevel )
{
    ans = .Call('R_cudaGraphicsSubResourceGetMappedArray', as(resource, 'cudaGraphicsResource_t'), as(arrayIndex, 'numeric'), as(mipLevel, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGraphicsSubResourceGetMappedArray')
    ans
}


cudaGetChannelDesc <-
function( array )
{
    ans = .Call('R_cudaGetChannelDesc', as(array, 'cudaArray_const_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaGetChannelDesc')
    ans
}


cudaCreateChannelDesc <-
function( x, y, z, w, f )
{
    ans = .Call('R_cudaCreateChannelDesc', as(x, 'integer'), as(y, 'integer'), as(z, 'integer'), as(w, 'integer'), as(f, 'cudaChannelFormatKind'))
    if(is(ans, 'struct cudaChannelFormatDesc') && ans != 0)
        raiseError(ans, 'R_cudaCreateChannelDesc')
    ans
}
