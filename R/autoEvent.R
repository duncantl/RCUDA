#include "RCUDA.h"


cuEventCreate <-
function( Flags  )
{
ans = .Call('R_cuEventCreate', as(Flags, 'numeric'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventCreate')
ans
}


cuEventRecord <-
function( hEvent , hStream  )
{
ans = .Call('R_cuEventRecord', as(hEvent, 'CUevent'), as(hStream, 'CUstream'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventRecord')
ans
}


cuEventQuery <-
function( hEvent  )
{
ans = .Call('R_cuEventQuery', as(hEvent, 'CUevent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventQuery')
ans
}


cuEventSynchronize <-
function( hEvent  )
{
ans = .Call('R_cuEventSynchronize', as(hEvent, 'CUevent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventSynchronize')
ans
}


cuEventDestroy <-
function( hEvent  )
{
ans = .Call('R_cuEventDestroy', as(hEvent, 'CUevent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventDestroy')
ans
}


cuEventElapsedTime <-
function( hStart , hEnd  )
{
ans = .Call('R_cuEventElapsedTime', as(hStart, 'CUevent'), as(hEnd, 'CUevent'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuEventElapsedTime')
ans
}
