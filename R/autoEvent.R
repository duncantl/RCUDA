# Generated programmatically at 2013-07-02 13:50:20 


cuEventCreate <-
function( Flags )
{
    ans = .Call('R_auto_cuEventCreate', as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventCreate')
    ans
}


cuEventRecord <-
function( hEvent, hStream )
{
    ans = .Call('R_auto_cuEventRecord', as(hEvent, 'CUevent'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventRecord')
    ans
}


cuEventQuery <-
function( hEvent )
{
    ans = .Call('R_auto_cuEventQuery', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventQuery')
    ans
}


cuEventSynchronize <-
function( hEvent )
{
    ans = .Call('R_auto_cuEventSynchronize', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventSynchronize')
    ans
}


cuEventDestroy <-
function( hEvent )
{
    ans = .Call('R_auto_cuEventDestroy', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventDestroy')
    ans
}


cuEventElapsedTime <-
function( hStart, hEnd )
{
    ans = .Call('R_auto_cuEventElapsedTime', as(hStart, 'CUevent'), as(hEnd, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuEventElapsedTime')
    ans
}
