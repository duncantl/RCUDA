# Generated programmatically at 2013-07-02 13:48:45 


cuDeviceGet <-
function( ordinal )
{
    ans = .Call('R_auto_cuDeviceGet', as(ordinal, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGet')
    as(ans, 'CUdevice')
}


cuDeviceGetCount <-
function(  )
{
    ans = .Call('R_auto_cuDeviceGetCount')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGetCount')
    ans
}


cuDeviceGetName <-
function( dev )
{
    ans = .Call('R_auto_cuDeviceGetName', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGetName')
    ans
}


cuDeviceTotalMem <-
function( dev )
{
    ans = .Call('R_auto_cuDeviceTotalMem', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceTotalMem')
    ans
}


cuDeviceGetAttribute <-
function( attrib, dev )
{
    ans = .Call('R_auto_cuDeviceGetAttribute', as(attrib, 'CUdevice_attribute'), as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGetAttribute')
    ans
}


cuDeviceGetByPCIBusId <-
function( pciBusId )
{
    ans = .Call('R_auto_cuDeviceGetByPCIBusId', as(pciBusId, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGetByPCIBusId')
    as(ans, 'CUdevice')
}


cuDeviceGetPCIBusId <-
function( dev )
{
    ans = .Call('R_auto_cuDeviceGetPCIBusId', as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceGetPCIBusId')
    ans
}


cuDeviceCanAccessPeer <-
function( dev, peerDev )
{
    ans = .Call('R_auto_cuDeviceCanAccessPeer', as(dev, 'CUdevice'), as(peerDev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuDeviceCanAccessPeer')
    ans
}


cudaDeviceReset <-
function(  )
{
    ans = .Call('R_auto_cudaDeviceReset')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceReset')
    ans
}


cudaDeviceSynchronize <-
function(  )
{
    ans = .Call('R_auto_cudaDeviceSynchronize')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceSynchronize')
    ans
}


cudaDeviceSetLimit <-
function( limit, value )
{
    ans = .Call('R_auto_cudaDeviceSetLimit', as(limit, 'cudaLimit'), as(value, 'size_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceSetLimit')
    ans
}


cudaDeviceGetLimit <-
function( limit )
{
    ans = .Call('R_auto_cudaDeviceGetLimit', as(limit, 'cudaLimit'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetLimit')
    ans
}


cudaDeviceGetCacheConfig <-
function(  )
{
    ans = .Call('R_auto_cudaDeviceGetCacheConfig')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetCacheConfig')
    ans
}


cudaDeviceGetStreamPriorityRange <-
function(  )
{
    ans = .Call('R_auto_cudaDeviceGetStreamPriorityRange')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetStreamPriorityRange')
    ans
}


cudaDeviceSetCacheConfig <-
function( cacheConfig )
{
    ans = .Call('R_auto_cudaDeviceSetCacheConfig', as(cacheConfig, 'cudaFuncCache'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceSetCacheConfig')
    ans
}


cudaDeviceGetSharedMemConfig <-
function(  )
{
    ans = .Call('R_auto_cudaDeviceGetSharedMemConfig')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetSharedMemConfig')
    ans
}


cudaDeviceSetSharedMemConfig <-
function( config )
{
    ans = .Call('R_auto_cudaDeviceSetSharedMemConfig', as(config, 'cudaSharedMemConfig'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceSetSharedMemConfig')
    ans
}


cudaDeviceGetByPCIBusId <-
function( pciBusId )
{
    ans = .Call('R_auto_cudaDeviceGetByPCIBusId', as(pciBusId, 'character'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetByPCIBusId')
    ans
}


cudaDeviceGetPCIBusId <-
function( device )
{
    ans = .Call('R_auto_cudaDeviceGetPCIBusId', as(device, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetPCIBusId')
    ans
}


cudaDeviceGetAttribute <-
function( attr, device )
{
    ans = .Call('R_auto_cudaDeviceGetAttribute', as(attr, 'cudaDeviceAttr'), as(device, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceGetAttribute')
    ans
}


cudaDeviceCanAccessPeer <-
function( device, peerDevice )
{
    ans = .Call('R_auto_cudaDeviceCanAccessPeer', as(device, 'integer'), as(peerDevice, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceCanAccessPeer')
    ans
}


cudaDeviceEnablePeerAccess <-
function( peerDevice, flags )
{
    ans = .Call('R_auto_cudaDeviceEnablePeerAccess', as(peerDevice, 'integer'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceEnablePeerAccess')
    ans
}


cudaDeviceDisablePeerAccess <-
function( peerDevice )
{
    ans = .Call('R_auto_cudaDeviceDisablePeerAccess', as(peerDevice, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_auto_cudaDeviceDisablePeerAccess')
    ans
}
