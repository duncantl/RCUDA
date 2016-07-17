# Generated programmatically at 2016-07-17 12:39:45 


cuDeviceGet <-
function( ordinal )
{
    ans = .Call('R_cuDeviceGet', as(ordinal, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGet')
    as(ans, 'CUdevice')
}


cuDeviceGetCount <-
function(  )
{
    ans = .Call('R_cuDeviceGetCount')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGetCount')
    ans
}


cuDeviceGetName <-
function( dev )
{
    ans = .Call('R_cuDeviceGetName', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGetName')
    ans
}


cuDeviceTotalMem <-
function( dev )
{
    ans = .Call('R_cuDeviceTotalMem_v2', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceTotalMem_v2')
    ans
}


cuDeviceGetAttribute <-
function( attrib, dev )
{
    ans = .Call('R_cuDeviceGetAttribute', as(attrib, 'CUdevice_attribute'), as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGetAttribute')
    ans
}


cuDevicePrimaryCtxRetain <-
function( dev )
{
    ans = .Call('R_cuDevicePrimaryCtxRetain', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDevicePrimaryCtxRetain')
    ans
}


cuDevicePrimaryCtxRelease <-
function( dev )
{
    ans = .Call('R_cuDevicePrimaryCtxRelease', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDevicePrimaryCtxRelease')
    ans
}


cuDevicePrimaryCtxSetFlags <-
function( dev, flags )
{
    ans = .Call('R_cuDevicePrimaryCtxSetFlags', as(dev, 'CUdevice'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDevicePrimaryCtxSetFlags')
    ans
}


cuDevicePrimaryCtxGetState <-
function( dev )
{
    ans = .Call('R_cuDevicePrimaryCtxGetState', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDevicePrimaryCtxGetState')
    ans
}


cuDevicePrimaryCtxReset <-
function( dev )
{
    ans = .Call('R_cuDevicePrimaryCtxReset', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDevicePrimaryCtxReset')
    ans
}


cuDeviceGetByPCIBusId <-
function( pciBusId )
{
    ans = .Call('R_cuDeviceGetByPCIBusId', as(pciBusId, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGetByPCIBusId')
    as(ans, 'CUdevice')
}


cuDeviceGetPCIBusId <-
function( dev )
{
    ans = .Call('R_cuDeviceGetPCIBusId', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceGetPCIBusId')
    ans
}


cuDeviceCanAccessPeer <-
function( dev, peerDev )
{
    ans = .Call('R_cuDeviceCanAccessPeer', as(dev, 'CUdevice'), as(peerDev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuDeviceCanAccessPeer')
    ans
}


cudaDeviceReset <-
function(  )
{
    ans = .Call('R_cudaDeviceReset')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceReset')
    ans
}


cudaDeviceSynchronize <-
function(  )
{
    ans = .Call('R_cudaDeviceSynchronize')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceSynchronize')
    ans
}


cudaDeviceSetLimit <-
function( limit, value )
{
    ans = .Call('R_cudaDeviceSetLimit', as(limit, 'cudaLimit'), as(value, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceSetLimit')
    ans
}


cudaDeviceGetLimit <-
function( limit )
{
    ans = .Call('R_cudaDeviceGetLimit', as(limit, 'cudaLimit'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetLimit')
    ans
}


cudaDeviceGetCacheConfig <-
function(  )
{
    ans = .Call('R_cudaDeviceGetCacheConfig')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetCacheConfig')
    ans
}


cudaDeviceGetStreamPriorityRange <-
function(  )
{
    ans = .Call('R_cudaDeviceGetStreamPriorityRange')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetStreamPriorityRange')
    ans
}


cudaDeviceSetCacheConfig <-
function( cacheConfig )
{
    ans = .Call('R_cudaDeviceSetCacheConfig', as(cacheConfig, 'cudaFuncCache'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceSetCacheConfig')
    ans
}


cudaDeviceGetSharedMemConfig <-
function(  )
{
    ans = .Call('R_cudaDeviceGetSharedMemConfig')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetSharedMemConfig')
    ans
}


cudaDeviceSetSharedMemConfig <-
function( config )
{
    ans = .Call('R_cudaDeviceSetSharedMemConfig', as(config, 'cudaSharedMemConfig'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceSetSharedMemConfig')
    ans
}


cudaDeviceGetByPCIBusId <-
function( pciBusId )
{
    ans = .Call('R_cudaDeviceGetByPCIBusId', as(pciBusId, 'character'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetByPCIBusId')
    ans
}


cudaDeviceGetPCIBusId <-
function( device )
{
    ans = .Call('R_cudaDeviceGetPCIBusId', as(device, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetPCIBusId')
    ans
}


cudaDeviceGetAttribute <-
function( attr, device )
{
    ans = .Call('R_cudaDeviceGetAttribute', as(attr, 'cudaDeviceAttr'), as(device, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceGetAttribute')
    ans
}


cudaDeviceCanAccessPeer <-
function( device, peerDevice )
{
    ans = .Call('R_cudaDeviceCanAccessPeer', as(device, 'integer'), as(peerDevice, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceCanAccessPeer')
    ans
}


cudaDeviceEnablePeerAccess <-
function( peerDevice, flags )
{
    ans = .Call('R_cudaDeviceEnablePeerAccess', as(peerDevice, 'integer'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceEnablePeerAccess')
    ans
}


cudaDeviceDisablePeerAccess <-
function( peerDevice )
{
    ans = .Call('R_cudaDeviceDisablePeerAccess', as(peerDevice, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaDeviceDisablePeerAccess')
    ans
}
