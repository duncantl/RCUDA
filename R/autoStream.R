#include "RCUDA.h"


cuStreamCreate <-
function( Flags  )
{
ans = .Call('R_cuStreamCreate', as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamCreate')
ans
}


cuStreamWaitEvent <-
function( hStream , hEvent , Flags  )
{
ans = .Call('R_cuStreamWaitEvent', as(hStream, 'CUstream'), as(hEvent, 'CUevent'), as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamWaitEvent')
ans
}


cuStreamAddCallback <-
function( hStream , callback , userData , flags  )
{
ans = .Call('R_cuStreamAddCallback', as(hStream, 'CUstream'), as(callback, 'CUstreamCallback'), as(userData, 'void'), as(flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamAddCallback')
ans
}


cuStreamQuery <-
function( hStream  )
{
ans = .Call('R_cuStreamQuery', as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamQuery')
ans
}


cuStreamSynchronize <-
function( hStream  )
{
ans = .Call('R_cuStreamSynchronize', as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamSynchronize')
ans
}


cuStreamDestroy <-
function( hStream  )
{
ans = .Call('R_cuStreamDestroy', as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuStreamDestroy')
ans
}
