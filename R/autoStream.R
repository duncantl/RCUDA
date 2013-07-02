# Generated programmatically at 2013-07-02 13:28:04 


cuStreamCreate <-
function( Flags )
{
    ans = .Call('R_auto_cuStreamCreate', as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamCreate')
    ans
}


cuStreamCreateWithPriority <-
function( flags, priority )
{
    ans = .Call('R_auto_cuStreamCreateWithPriority', as(flags, 'numeric'), as(priority, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamCreateWithPriority')
    ans
}


cuStreamGetPriority <-
function( hStream )
{
    ans = .Call('R_auto_cuStreamGetPriority', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamGetPriority')
    ans
}


cuStreamGetFlags <-
function( hStream )
{
    ans = .Call('R_auto_cuStreamGetFlags', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamGetFlags')
    ans
}


cuStreamWaitEvent <-
function( hStream, hEvent, Flags )
{
    ans = .Call('R_auto_cuStreamWaitEvent', as(hStream, 'CUstream'), as(hEvent, 'CUevent'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamWaitEvent')
    ans
}


cuStreamAddCallback <-
function( hStream, callback, userData, flags )
{
    ans = .Call('R_auto_cuStreamAddCallback', as(hStream, 'CUstream'), as(callback, 'CUstreamCallback'), as(userData, 'voidPtr'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamAddCallback')
    ans
}


cuStreamQuery <-
function( hStream )
{
    ans = .Call('R_auto_cuStreamQuery', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamQuery')
    ans
}


cuStreamSynchronize <-
function( hStream )
{
    ans = .Call('R_auto_cuStreamSynchronize', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamSynchronize')
    ans
}


cuStreamDestroy <-
function( hStream )
{
    ans = .Call('R_auto_cuStreamDestroy', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuStreamDestroy')
    ans
}
