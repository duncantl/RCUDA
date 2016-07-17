// Generated programmatically at 2016-07-17 12:39:46 
#include "RCUDA.h"


SEXP
R_cuStreamCreate(SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUstream phStream;
    unsigned int Flags = REAL(r_Flags)[0];
    CUresult ans;
    ans = cuStreamCreate(& phStream,  Flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(phStream, "CUstream") ;
    return(r_ans);
}


SEXP
R_cuStreamCreateWithPriority(SEXP r_flags, SEXP r_priority)
{
    SEXP r_ans = R_NilValue;
    CUstream phStream;
    unsigned int flags = REAL(r_flags)[0];
    int priority = INTEGER(r_priority)[0];
    CUresult ans;
    ans = cuStreamCreateWithPriority(& phStream,  flags,  priority);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(phStream, "CUstream") ;
    return(r_ans);
}


SEXP
R_cuStreamGetPriority(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    int priority;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUresult ans;
    ans = cuStreamGetPriority( hStream, & priority);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(priority) ;
    return(r_ans);
}


SEXP
R_cuStreamGetFlags(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    unsigned int flags;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUresult ans;
    ans = cuStreamGetFlags( hStream, & flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(flags) ;
    return(r_ans);
}


SEXP R_cuStreamWaitEvent(SEXP r_hStream, SEXP r_hEvent, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    unsigned int Flags = REAL(r_Flags)[0];
    
    CUresult ans;
    ans = cuStreamWaitEvent(hStream, hEvent, Flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamAddCallback(SEXP r_hStream, SEXP r_callback, SEXP r_userData, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUstreamCallback callback = (CUstreamCallback) getRReference(r_callback);
    void * userData = GET_REF(r_userData, void );
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuStreamAddCallback(hStream, callback, userData, flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamAttachMemAsync(SEXP r_hStream, SEXP r_dptr, SEXP r_length, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUdeviceptr dptr = REAL(r_dptr)[0];
    size_t length = REAL(r_length)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuStreamAttachMemAsync(hStream, dptr, length, flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamQuery(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamQuery(hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamSynchronize(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamSynchronize(hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamDestroy_v2(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamDestroy_v2(hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaStreamCreate()
{
    SEXP r_ans = R_NilValue;
    cudaStream_t pStream;
    cudaError_t ans;
    ans = cudaStreamCreate(& pStream);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pStream, "cudaStream_t") ;
    return(r_ans);
}


SEXP
R_cudaStreamCreateWithFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t pStream;
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaStreamCreateWithFlags(& pStream,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pStream, "cudaStream_t") ;
    return(r_ans);
}


SEXP
R_cudaStreamCreateWithPriority(SEXP r_flags, SEXP r_priority)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t pStream;
    unsigned int flags = REAL(r_flags)[0];
    int priority = INTEGER(r_priority)[0];
    cudaError_t ans;
    ans = cudaStreamCreateWithPriority(& pStream,  flags,  priority);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pStream, "cudaStream_t") ;
    return(r_ans);
}


SEXP
R_cudaStreamGetPriority(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    int priority;
    cudaStream_t hStream = (cudaStream_t) getRReference(r_hStream);
    cudaError_t ans;
    ans = cudaStreamGetPriority( hStream, & priority);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(priority) ;
    return(r_ans);
}


SEXP
R_cudaStreamGetFlags(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    unsigned int flags;
    cudaStream_t hStream = (cudaStream_t) getRReference(r_hStream);
    cudaError_t ans;
    ans = cudaStreamGetFlags( hStream, & flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(flags) ;
    return(r_ans);
}


SEXP R_cudaStreamDestroy(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamDestroy(stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaStreamWaitEvent(SEXP r_stream, SEXP r_event, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaStreamWaitEvent(stream, event, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaStreamAddCallback(SEXP r_stream, SEXP r_callback, SEXP r_userData, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaStreamCallback_t callback = (cudaStreamCallback_t) getRReference(r_callback);
    void * userData = GET_REF(r_userData, void );
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaStreamAddCallback(stream, callback, userData, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaStreamSynchronize(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamSynchronize(stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaStreamQuery(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamQuery(stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaStreamAttachMemAsync(SEXP r_stream, SEXP r_devPtr, SEXP r_length, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    void * devPtr = GET_REF(r_devPtr, void );
    size_t length = REAL(r_length)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaStreamAttachMemAsync(stream, devPtr, length, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}
