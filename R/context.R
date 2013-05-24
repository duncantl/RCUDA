

cuCtxCreate <-
function( flags , dev  )
{
ans = .Call('R_cuCtxCreate', as(flags, 'numeric'), as(dev, 'CUdevice'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxCreate')
ans
}


cuCtxDestroy <-
function( ctx  )
{
ans = .Call('R_cuCtxDestroy', as(ctx, 'CUcontext'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxDestroy')
ans
}


cuCtxPushCurrent <-
function( ctx  )
{
ans = .Call('R_cuCtxPushCurrent', as(ctx, 'CUcontext'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxPushCurrent')
ans
}


cuCtxPopCurrent <-
function(  )
{
ans = .Call('R_cuCtxPopCurrent')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxPopCurrent')
ans
}


cuCtxSetCurrent <-
function( ctx  )
{
ans = .Call('R_cuCtxSetCurrent', as(ctx, 'CUcontext'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxSetCurrent')
ans
}


cuCtxGetCurrent <-
function(  )
{
ans = .Call('R_cuCtxGetCurrent')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetCurrent')
ans
}


cuCtxGetDevice <-
function(  )
{
ans = .Call('R_cuCtxGetDevice')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetDevice')
 new("CUDeviceNum", ans)  # manually changed
}


cuCtxSynchronize <-
function(  )
{
ans = .Call('R_cuCtxSynchronize')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxSynchronize')
ans
}


cuCtxSetLimit <-
function( limit , value  )
{
ans = .Call('R_cuCtxSetLimit', as(limit, 'CUlimit'), as(value, 'size_t'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxSetLimit')
ans
}


cuCtxGetLimit <-
function( limit  )
{
ans = .Call('R_cuCtxGetLimit', as(limit, 'CUlimit'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetLimit')
ans
}


cuCtxGetCacheConfig <-
function(  )
{
ans = .Call('R_cuCtxGetCacheConfig')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetCacheConfig')
ans
}


cuCtxSetCacheConfig <-
function( config  )
{
ans = .Call('R_cuCtxSetCacheConfig', as(config, 'CUfunc_cache'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxSetCacheConfig')
ans
}


cuCtxGetSharedMemConfig <-
function(  )
{
ans = .Call('R_cuCtxGetSharedMemConfig')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetSharedMemConfig')
ans
}


cuCtxSetSharedMemConfig <-
function( config  )
{
ans = .Call('R_cuCtxSetSharedMemConfig', as(config, 'CUsharedconfig'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxSetSharedMemConfig')
ans
}


cuCtxGetApiVersion <-
function( ctx  )
{
ans = .Call('R_cuCtxGetApiVersion', as(ctx, 'CUcontext'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxGetApiVersion')
ans
}


cuCtxEnablePeerAccess <-
function( peerContext , Flags  )
{
ans = .Call('R_cuCtxEnablePeerAccess', as(peerContext, 'CUcontext'), as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxEnablePeerAccess')
ans
}


cuCtxDisablePeerAccess <-
function( peerContext  )
{
ans = .Call('R_cuCtxDisablePeerAccess', as(peerContext, 'CUcontext'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuCtxDisablePeerAccess')
ans
}
