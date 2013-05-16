#include "RCUDA.h"


cuFuncGetAttribute <-
function( attrib , hfunc  )
{
ans = .Call('R_cuFuncGetAttribute', as(attrib, 'CUfunction_attribute'), as(hfunc, 'CUfunction'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuFuncGetAttribute')
ans
}


cuFuncSetCacheConfig <-
function( hfunc , config  )
{
ans = .Call('R_cuFuncSetCacheConfig', as(hfunc, 'CUfunction'), as(config, 'CUfunc_cache'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuFuncSetCacheConfig')
ans
}


cuFuncSetSharedMemConfig <-
function( hfunc , config  )
{
ans = .Call('R_cuFuncSetSharedMemConfig', as(hfunc, 'CUfunction'), as(config, 'CUsharedconfig'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuFuncSetSharedMemConfig')
ans
}


cuFuncSetBlockShape <-
function( hfunc , x , y , z  )
{
ans = .Call('R_cuFuncSetBlockShape', as(hfunc, 'CUfunction'), as(x, 'integer'), as(y, 'integer'), as(z, 'integer'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuFuncSetBlockShape')
ans
}


cuFuncSetSharedSize <-
function( hfunc , bytes  )
{
ans = .Call('R_cuFuncSetSharedSize', as(hfunc, 'CUfunction'), as(bytes, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuFuncSetSharedSize')
ans
}
