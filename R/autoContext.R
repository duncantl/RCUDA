# Generated programmatically at 2016-07-15 18:47:23 


cuCtxCreate <-
function( flags, dev )
{
    ans = .Call('R_cuCtxCreate_v2', as(flags, 'numeric'), as(dev, 'CUdevice'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxCreate_v2')
    ans
}


cuCtxDestroy <-
function( ctx )
{
    ans = .Call('R_cuCtxDestroy_v2', as(ctx, 'CUcontext'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxDestroy_v2')
    ans
}


cuCtxPushCurrent <-
function( ctx )
{
    ans = .Call('R_cuCtxPushCurrent_v2', as(ctx, 'CUcontext'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxPushCurrent_v2')
    ans
}


cuCtxPopCurrent <-
function(  )
{
    ans = .Call('R_cuCtxPopCurrent_v2')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxPopCurrent_v2')
    ans
}


cuCtxSetCurrent <-
function( ctx )
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
    as(ans, 'CUdevice')
}


cuCtxGetFlags <-
function(  )
{
    ans = .Call('R_cuCtxGetFlags')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxGetFlags')
    ans
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
function( limit, value )
{
    ans = .Call('R_cuCtxSetLimit', as(limit, 'CUlimit'), as(value, 'size_t'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxSetLimit')
    ans
}


cuCtxGetLimit <-
function( limit )
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
function( config )
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
function( config )
{
    ans = .Call('R_cuCtxSetSharedMemConfig', as(config, 'CUsharedconfig'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxSetSharedMemConfig')
    ans
}


cuCtxGetApiVersion <-
function( ctx )
{
    ans = .Call('R_cuCtxGetApiVersion', as(ctx, 'CUcontext'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxGetApiVersion')
    ans
}


cuCtxGetStreamPriorityRange <-
function(  )
{
    ans = .Call('R_cuCtxGetStreamPriorityRange')
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxGetStreamPriorityRange')
    ans
}


cuCtxEnablePeerAccess <-
function( peerContext, Flags )
{
    ans = .Call('R_cuCtxEnablePeerAccess', as(peerContext, 'CUcontext'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxEnablePeerAccess')
    ans
}


cuCtxDisablePeerAccess <-
function( peerContext )
{
    ans = .Call('R_cuCtxDisablePeerAccess', as(peerContext, 'CUcontext'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuCtxDisablePeerAccess')
    ans
}
