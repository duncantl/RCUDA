# Generated programmatically at 2016-07-17 12:39:45 


cuFuncGetAttribute <-
function( attrib, hfunc )
{
    ans = .Call('R_cuFuncGetAttribute', as(attrib, 'CUfunction_attribute'), as(hfunc, 'CUfunction'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuFuncGetAttribute')
    ans
}


cuFuncSetCacheConfig <-
function( hfunc, config )
{
    ans = .Call('R_cuFuncSetCacheConfig', as(hfunc, 'CUfunction'), as(config, 'CUfunc_cache'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuFuncSetCacheConfig')
    ans
}


cuFuncSetSharedMemConfig <-
function( hfunc, config )
{
    ans = .Call('R_cuFuncSetSharedMemConfig', as(hfunc, 'CUfunction'), as(config, 'CUsharedconfig'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuFuncSetSharedMemConfig')
    ans
}


cuFuncSetBlockShape <-
function( hfunc, x, y, z )
{
    ans = .Call('R_cuFuncSetBlockShape', as(hfunc, 'CUfunction'), as(x, 'integer'), as(y, 'integer'), as(z, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuFuncSetBlockShape')
    ans
}


cuFuncSetSharedSize <-
function( hfunc, bytes )
{
    ans = .Call('R_cuFuncSetSharedSize', as(hfunc, 'CUfunction'), as(bytes, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuFuncSetSharedSize')
    ans
}


cudaFuncSetCacheConfig <-
function( func, cacheConfig )
{
    ans = .Call('R_cudaFuncSetCacheConfig', as(func, 'voidPtr'), as(cacheConfig, 'cudaFuncCache'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaFuncSetCacheConfig')
    ans
}


cudaFuncSetSharedMemConfig <-
function( func, config )
{
    ans = .Call('R_cudaFuncSetSharedMemConfig', as(func, 'voidPtr'), as(config, 'cudaSharedMemConfig'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaFuncSetSharedMemConfig')
    ans
}


cudaFuncGetAttributes <-
function( func )
{
    ans = .Call('R_cudaFuncGetAttributes', as(func, 'voidPtr'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaFuncGetAttributes')
    ans
}
