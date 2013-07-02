# Generated programmatically at 2013-07-02 13:50:48 


cuFuncGetAttribute <-
function( attrib, hfunc )
{
    ans = .Call('R_auto_cuFuncGetAttribute', as(attrib, 'CUfunction_attribute'), as(hfunc, 'CUfunction'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuFuncGetAttribute')
    ans
}


cuFuncSetCacheConfig <-
function( hfunc, config )
{
    ans = .Call('R_auto_cuFuncSetCacheConfig', as(hfunc, 'CUfunction'), as(config, 'CUfunc_cache'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuFuncSetCacheConfig')
    ans
}


cuFuncSetSharedMemConfig <-
function( hfunc, config )
{
    ans = .Call('R_auto_cuFuncSetSharedMemConfig', as(hfunc, 'CUfunction'), as(config, 'CUsharedconfig'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuFuncSetSharedMemConfig')
    ans
}


cuFuncSetBlockShape <-
function( hfunc, x, y, z )
{
    ans = .Call('R_auto_cuFuncSetBlockShape', as(hfunc, 'CUfunction'), as(x, 'integer'), as(y, 'integer'), as(z, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuFuncSetBlockShape')
    ans
}


cuFuncSetSharedSize <-
function( hfunc, bytes )
{
    ans = .Call('R_auto_cuFuncSetSharedSize', as(hfunc, 'CUfunction'), as(bytes, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuFuncSetSharedSize')
    ans
}
