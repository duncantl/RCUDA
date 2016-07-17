# Generated programmatically at 2016-07-17 12:39:46 


cuStreamCreate <-
function( Flags )
{
    ans = .Call('R_cuStreamCreate', as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamCreate')
    ans
}


cuStreamCreateWithPriority <-
function( flags, priority )
{
    ans = .Call('R_cuStreamCreateWithPriority', as(flags, 'numeric'), as(priority, 'integer'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamCreateWithPriority')
    ans
}


cuStreamGetPriority <-
function( hStream )
{
    ans = .Call('R_cuStreamGetPriority', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamGetPriority')
    ans
}


cuStreamGetFlags <-
function( hStream )
{
    ans = .Call('R_cuStreamGetFlags', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamGetFlags')
    ans
}


cuStreamWaitEvent <-
function( hStream, hEvent, Flags )
{
    ans = .Call('R_cuStreamWaitEvent', as(hStream, 'CUstream'), as(hEvent, 'CUevent'), as(Flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamWaitEvent')
    ans
}


cuStreamAddCallback <-
function( hStream, callback, userData, flags )
{
    ans = .Call('R_cuStreamAddCallback', as(hStream, 'CUstream'), as(callback, 'CUstreamCallback'), as(userData, 'voidPtr'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamAddCallback')
    ans
}


cuStreamAttachMemAsync <-
function( hStream, dptr, length, flags )
{
    ans = .Call('R_cuStreamAttachMemAsync', as(hStream, 'CUstream'), as(dptr, 'CUdeviceptr'), as(length, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamAttachMemAsync')
    ans
}


cuStreamQuery <-
function( hStream )
{
    ans = .Call('R_cuStreamQuery', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamQuery')
    ans
}


cuStreamSynchronize <-
function( hStream )
{
    ans = .Call('R_cuStreamSynchronize', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamSynchronize')
    ans
}


cuStreamDestroy <-
function( hStream )
{
    ans = .Call('R_cuStreamDestroy_v2', as(hStream, 'CUstream'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_cuStreamDestroy_v2')
    ans
}


cudaStreamCreate <-
function(  )
{
    ans = .Call('R_cudaStreamCreate')
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamCreate')
    ans
}


cudaStreamCreateWithFlags <-
function( flags )
{
    ans = .Call('R_cudaStreamCreateWithFlags', as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamCreateWithFlags')
    ans
}


cudaStreamCreateWithPriority <-
function( flags, priority )
{
    ans = .Call('R_cudaStreamCreateWithPriority', as(flags, 'numeric'), as(priority, 'integer'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamCreateWithPriority')
    ans
}


cudaStreamGetPriority <-
function( hStream )
{
    ans = .Call('R_cudaStreamGetPriority', as(hStream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamGetPriority')
    ans
}


cudaStreamGetFlags <-
function( hStream )
{
    ans = .Call('R_cudaStreamGetFlags', as(hStream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamGetFlags')
    ans
}


cudaStreamDestroy <-
function( stream )
{
    ans = .Call('R_cudaStreamDestroy', as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamDestroy')
    ans
}


cudaStreamWaitEvent <-
function( stream, event, flags )
{
    ans = .Call('R_cudaStreamWaitEvent', as(stream, 'cudaStream_t'), as(event, 'cudaEvent_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamWaitEvent')
    ans
}


cudaStreamAddCallback <-
function( stream, callback, userData, flags )
{
    ans = .Call('R_cudaStreamAddCallback', as(stream, 'cudaStream_t'), as(callback, 'cudaStreamCallback_t'), as(userData, 'voidPtr'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamAddCallback')
    ans
}


cudaStreamSynchronize <-
function( stream )
{
    ans = .Call('R_cudaStreamSynchronize', as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamSynchronize')
    ans
}


cudaStreamQuery <-
function( stream )
{
    ans = .Call('R_cudaStreamQuery', as(stream, 'cudaStream_t'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamQuery')
    ans
}


cudaStreamAttachMemAsync <-
function( stream, devPtr, length, flags )
{
    ans = .Call('R_cudaStreamAttachMemAsync', as(stream, 'cudaStream_t'), as(devPtr, 'voidPtr'), as(length, 'size_t'), as(flags, 'numeric'))
    if(is(ans, 'cudaError_t') && ans != 0)
        raiseError(ans, 'R_cudaStreamAttachMemAsync')
    ans
}
