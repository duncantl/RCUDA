# Generated programmatically at 2016-07-15 18:47:23 


cuEventCreate <-
function( Flags )
{
    ans = .Call('R_cuEventCreate', as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventCreate')
    ans
}


cuEventRecord <-
function( hEvent, hStream )
{
    ans = .Call('R_cuEventRecord', as(hEvent, 'CUevent'), as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventRecord')
    ans
}


cuEventQuery <-
function( hEvent )
{
    ans = .Call('R_cuEventQuery', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventQuery')
    ans
}


cuEventSynchronize <-
function( hEvent )
{
    ans = .Call('R_cuEventSynchronize', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventSynchronize')
    ans
}


cuEventDestroy <-
function( hEvent )
{
    ans = .Call('R_cuEventDestroy_v2', as(hEvent, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventDestroy_v2')
    ans
}


cuEventElapsedTime <-
function( hStart, hEnd )
{
    ans = .Call('R_cuEventElapsedTime', as(hStart, 'CUevent'), as(hEnd, 'CUevent'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuEventElapsedTime')
    ans
}


cudaEventCreate <-
function(  )
{
    ans = .Call('R_cudaEventCreate')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventCreate')
    ans
}


cudaEventCreateWithFlags <-
function( flags )
{
    ans = .Call('R_cudaEventCreateWithFlags', as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventCreateWithFlags')
    ans
}


cudaEventRecord <-
function( event, stream )
{
    ans = .Call('R_cudaEventRecord', as(event, 'cudaEvent_t'), as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventRecord')
    ans
}


cudaEventQuery <-
function( event )
{
    ans = .Call('R_cudaEventQuery', as(event, 'cudaEvent_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventQuery')
    ans
}


cudaEventSynchronize <-
function( event )
{
    ans = .Call('R_cudaEventSynchronize', as(event, 'cudaEvent_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventSynchronize')
    ans
}


cudaEventDestroy <-
function( event )
{
    ans = .Call('R_cudaEventDestroy', as(event, 'cudaEvent_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventDestroy')
    ans
}


cudaEventElapsedTime <-
function( start, end )
{
    ans = .Call('R_cudaEventElapsedTime', as(start, 'cudaEvent_t'), as(end, 'cudaEvent_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaEventElapsedTime')
    ans
}
