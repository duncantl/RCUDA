# Generated programmatically at 2013-05-18 16:25:42 


cuModuleLoadDataEx <-
function( image , numOptions  )
{
ans = .Call('R_auto_cuModuleLoadDataEx', as(image, 'void'), as(numOptions, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuModuleLoadDataEx')
ans
}


cuArrayCreate <-
function( pAllocateArray  )
{
ans = .Call('R_auto_cuArrayCreate', as(pAllocateArray, 'CUDA_ARRAY_DESCRIPTOR'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuArrayCreate')
ans
}


cuArrayGetDescriptor <-
function( hArray  )
{
ans = .Call('R_auto_cuArrayGetDescriptor', as(hArray, 'CUarray'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuArrayGetDescriptor')
ans
}


cuArrayDestroy <-
function( hArray  )
{
ans = .Call('R_auto_cuArrayDestroy', as(hArray, 'CUarray'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuArrayDestroy')
ans
}


cuArray3DCreate <-
function( pAllocateArray  )
{
ans = .Call('R_auto_cuArray3DCreate', as(pAllocateArray, 'CUDA_ARRAY3D_DESCRIPTOR'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuArray3DCreate')
ans
}


cuArray3DGetDescriptor <-
function( hArray  )
{
ans = .Call('R_auto_cuArray3DGetDescriptor', as(hArray, 'CUarray'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuArray3DGetDescriptor')
ans
}


cuPointerGetAttribute <-
function( data , attribute , ptr  )
{
ans = .Call('R_auto_cuPointerGetAttribute', as(data, 'void'), as(attribute, 'CUpointer_attribute'), as(ptr, 'CUdeviceptr'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuPointerGetAttribute')
ans
}


cuGraphicsUnregisterResource <-
function( resource  )
{
ans = .Call('R_auto_cuGraphicsUnregisterResource', as(resource, 'CUgraphicsResource'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsUnregisterResource')
ans
}


cuGraphicsSubResourceGetMappedArray <-
function( resource , arrayIndex , mipLevel  )
{
ans = .Call('R_auto_cuGraphicsSubResourceGetMappedArray', as(resource, 'CUgraphicsResource'), as(arrayIndex, 'numeric'), as(mipLevel, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsSubResourceGetMappedArray')
ans
}


cuGraphicsResourceGetMappedPointer <-
function( resource  )
{
ans = .Call('R_auto_cuGraphicsResourceGetMappedPointer', as(resource, 'CUgraphicsResource'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsResourceGetMappedPointer')
ans
}


cuGraphicsResourceSetMapFlags <-
function( resource , flags  )
{
ans = .Call('R_auto_cuGraphicsResourceSetMapFlags', as(resource, 'CUgraphicsResource'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsResourceSetMapFlags')
ans
}


cuGraphicsMapResources <-
function( count , hStream  )
{
ans = .Call('R_auto_cuGraphicsMapResources', as(count, 'numeric'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsMapResources')
ans
}


cuGraphicsUnmapResources <-
function( count , hStream  )
{
ans = .Call('R_auto_cuGraphicsUnmapResources', as(count, 'numeric'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cuGraphicsUnmapResources')
ans
}


cudaPeekAtLastError <-
function(  )
{
ans = .Call('R_auto_cudaPeekAtLastError')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaPeekAtLastError')
ans
}


cudaChooseDevice <-
function( prop  )
{
ans = .Call('R_auto_cudaChooseDevice', as(prop, 'struct cudaDeviceProp'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaChooseDevice')
ans
}


cudaGetDevice <-
function(  )
{
ans = .Call('R_auto_cudaGetDevice')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGetDevice')
ans
}


cudaSetValidDevices <-
function( device_arr , len  )
{
ans = .Call('R_auto_cudaSetValidDevices', as(device_arr, 'integer'), as(len, 'integer'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaSetValidDevices')
ans
}


cudaSetDeviceFlags <-
function( flags  )
{
ans = .Call('R_auto_cudaSetDeviceFlags', as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaSetDeviceFlags')
ans
}


cudaStreamCreate <-
function(  )
{
ans = .Call('R_auto_cudaStreamCreate')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamCreate')
ans
}


cudaStreamCreateWithFlags <-
function( flags  )
{
ans = .Call('R_auto_cudaStreamCreateWithFlags', as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamCreateWithFlags')
ans
}


cudaStreamDestroy <-
function( stream  )
{
ans = .Call('R_auto_cudaStreamDestroy', as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamDestroy')
ans
}


cudaStreamWaitEvent <-
function( stream , event , flags  )
{
ans = .Call('R_auto_cudaStreamWaitEvent', as(stream, 'cudaStream_t'), as(event, 'cudaEvent_t'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamWaitEvent')
ans
}


cudaStreamAddCallback <-
function( stream , callback , userData , flags  )
{
ans = .Call('R_auto_cudaStreamAddCallback', as(stream, 'cudaStream_t'), as(callback, 'cudaStreamCallback_t'), as(userData, 'void'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamAddCallback')
ans
}


cudaStreamSynchronize <-
function( stream  )
{
ans = .Call('R_auto_cudaStreamSynchronize', as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamSynchronize')
ans
}


cudaStreamQuery <-
function( stream  )
{
ans = .Call('R_auto_cudaStreamQuery', as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaStreamQuery')
ans
}


cudaEventCreate <-
function(  )
{
ans = .Call('R_auto_cudaEventCreate')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventCreate')
ans
}


cudaEventCreateWithFlags <-
function( flags  )
{
ans = .Call('R_auto_cudaEventCreateWithFlags', as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventCreateWithFlags')
ans
}


cudaEventRecord <-
function( event , stream  )
{
ans = .Call('R_auto_cudaEventRecord', as(event, 'cudaEvent_t'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventRecord')
ans
}


cudaEventQuery <-
function( event  )
{
ans = .Call('R_auto_cudaEventQuery', as(event, 'cudaEvent_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventQuery')
ans
}


cudaEventSynchronize <-
function( event  )
{
ans = .Call('R_auto_cudaEventSynchronize', as(event, 'cudaEvent_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventSynchronize')
ans
}


cudaEventDestroy <-
function( event  )
{
ans = .Call('R_auto_cudaEventDestroy', as(event, 'cudaEvent_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventDestroy')
ans
}


cudaEventElapsedTime <-
function( start , end  )
{
ans = .Call('R_auto_cudaEventElapsedTime', as(start, 'cudaEvent_t'), as(end, 'cudaEvent_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaEventElapsedTime')
ans
}


cudaFuncSetCacheConfig <-
function( func , cacheConfig  )
{
ans = .Call('R_auto_cudaFuncSetCacheConfig', as(func, 'void'), as(cacheConfig, 'cudaFuncCache'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaFuncSetCacheConfig')
ans
}


cudaFuncSetSharedMemConfig <-
function( func , config  )
{
ans = .Call('R_auto_cudaFuncSetSharedMemConfig', as(func, 'void'), as(config, 'cudaSharedMemConfig'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaFuncSetSharedMemConfig')
ans
}


cudaLaunch <-
function( func  )
{
ans = .Call('R_auto_cudaLaunch', as(func, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaLaunch')
ans
}


cudaFuncGetAttributes <-
function( func  )
{
ans = .Call('R_auto_cudaFuncGetAttributes', as(func, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaFuncGetAttributes')
ans
}


cudaSetDoubleForDevice <-
function(  )
{
ans = .Call('R_auto_cudaSetDoubleForDevice')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaSetDoubleForDevice')
ans
}


cudaSetDoubleForHost <-
function(  )
{
ans = .Call('R_auto_cudaSetDoubleForHost')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaSetDoubleForHost')
ans
}


cudaMallocHost <-
function( size  )
{
ans = .Call('R_auto_cudaMallocHost', as(size, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMallocHost')
ans
}


cudaMallocPitch <-
function( width , height  )
{
ans = .Call('R_auto_cudaMallocPitch', as(width, 'size_t'), as(height, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMallocPitch')
ans
}


cudaMallocArray <-
function( desc , width , height , flags  )
{
ans = .Call('R_auto_cudaMallocArray', as(desc, 'struct cudaChannelFormatDesc'), as(width, 'size_t'), as(height, 'size_t'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMallocArray')
ans
}


cudaFreeHost <-
function( ptr  )
{
ans = .Call('R_auto_cudaFreeHost', as(ptr, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaFreeHost')
ans
}


cudaFreeArray <-
function( array  )
{
ans = .Call('R_auto_cudaFreeArray', as(array, 'cudaArray_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaFreeArray')
ans
}


cudaHostAlloc <-
function( size , flags  )
{
ans = .Call('R_auto_cudaHostAlloc', as(size, 'size_t'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaHostAlloc')
ans
}


cudaHostRegister <-
function( ptr , size , flags  )
{
ans = .Call('R_auto_cudaHostRegister', as(ptr, 'void'), as(size, 'size_t'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaHostRegister')
ans
}


cudaHostUnregister <-
function( ptr  )
{
ans = .Call('R_auto_cudaHostUnregister', as(ptr, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaHostUnregister')
ans
}


cudaHostGetDevicePointer <-
function( pHost , flags  )
{
ans = .Call('R_auto_cudaHostGetDevicePointer', as(pHost, 'void'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaHostGetDevicePointer')
ans
}


cudaHostGetFlags <-
function( pHost  )
{
ans = .Call('R_auto_cudaHostGetFlags', as(pHost, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaHostGetFlags')
ans
}


cudaMalloc3D <-
function( extent  )
{
ans = .Call('R_auto_cudaMalloc3D', as(extent, 'cudaExtent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMalloc3D')
ans
}


cudaMalloc3DArray <-
function( desc , extent , flags  )
{
ans = .Call('R_auto_cudaMalloc3DArray', as(desc, 'struct cudaChannelFormatDesc'), as(extent, 'cudaExtent'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaMalloc3DArray')
ans
}


cudaArrayGetInfo <-
function( array  )
{
ans = .Call('R_auto_cudaArrayGetInfo', as(array, 'cudaArray_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaArrayGetInfo')
ans
}


cudaGetSymbolAddress <-
function( symbol  )
{
ans = .Call('R_auto_cudaGetSymbolAddress', as(symbol, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGetSymbolAddress')
ans
}


cudaGetSymbolSize <-
function( symbol  )
{
ans = .Call('R_auto_cudaGetSymbolSize', as(symbol, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGetSymbolSize')
ans
}


cudaPointerGetAttributes <-
function( ptr  )
{
ans = .Call('R_auto_cudaPointerGetAttributes', as(ptr, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaPointerGetAttributes')
ans
}


cudaGraphicsUnregisterResource <-
function( resource  )
{
ans = .Call('R_auto_cudaGraphicsUnregisterResource', as(resource, 'cudaGraphicsResource_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsUnregisterResource')
ans
}


cudaGraphicsResourceSetMapFlags <-
function( resource , flags  )
{
ans = .Call('R_auto_cudaGraphicsResourceSetMapFlags', as(resource, 'cudaGraphicsResource_t'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsResourceSetMapFlags')
ans
}


cudaGraphicsMapResources <-
function( count , stream  )
{
ans = .Call('R_auto_cudaGraphicsMapResources', as(count, 'integer'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsMapResources')
ans
}


cudaGraphicsUnmapResources <-
function( count , stream  )
{
ans = .Call('R_auto_cudaGraphicsUnmapResources', as(count, 'integer'), as(stream, 'cudaStream_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsUnmapResources')
ans
}


cudaGraphicsResourceGetMappedPointer <-
function( resource  )
{
ans = .Call('R_auto_cudaGraphicsResourceGetMappedPointer', as(resource, 'cudaGraphicsResource_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsResourceGetMappedPointer')
ans
}


cudaGraphicsSubResourceGetMappedArray <-
function( resource , arrayIndex , mipLevel  )
{
ans = .Call('R_auto_cudaGraphicsSubResourceGetMappedArray', as(resource, 'cudaGraphicsResource_t'), as(arrayIndex, 'numeric'), as(mipLevel, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGraphicsSubResourceGetMappedArray')
ans
}


cudaGetChannelDesc <-
function( array  )
{
ans = .Call('R_auto_cudaGetChannelDesc', as(array, 'cudaArray_const_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaGetChannelDesc')
ans
}


cudaCreateChannelDesc <-
function( x , y , z , w , f  )
{
ans = .Call('R_auto_cudaCreateChannelDesc', as(x, 'integer'), as(y, 'integer'), as(z, 'integer'), as(w, 'integer'), as(f, 'cudaChannelFormatKind'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_auto_cudaCreateChannelDesc')
ans
}
