// Generated programmatically at 2016-07-17 12:39:45 
#include "RCUDA.h"


SEXP
R_cuEventCreate(SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUevent phEvent;
    unsigned int Flags = REAL(r_Flags)[0];
    CUresult ans;
    ans = cuEventCreate(& phEvent,  Flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(phEvent, "CUevent") ;
    return(r_ans);
}


SEXP R_cuEventRecord(SEXP r_hEvent, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuEventRecord(hEvent, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventQuery(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventQuery(hEvent);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventSynchronize(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventSynchronize(hEvent);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventDestroy_v2(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventDestroy_v2(hEvent);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuEventElapsedTime(SEXP r_hStart, SEXP r_hEnd)
{
    SEXP r_ans = R_NilValue;
    float pMilliseconds;
    CUevent hStart = (CUevent) getRReference(r_hStart);
    CUevent hEnd = (CUevent) getRReference(r_hEnd);
    CUresult ans;
    ans = cuEventElapsedTime(& pMilliseconds,  hStart,  hEnd);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(pMilliseconds) ;
    return(r_ans);
}


SEXP
R_cudaEventCreate()
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event;
    cudaError_t ans;
    ans = cudaEventCreate(& event);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(event, "cudaEvent_t") ;
    return(r_ans);
}


SEXP
R_cudaEventCreateWithFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event;
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaEventCreateWithFlags(& event,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(event, "cudaEvent_t") ;
    return(r_ans);
}


SEXP R_cudaEventRecord(SEXP r_event, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaEventRecord(event, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaEventQuery(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventQuery(event);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaEventSynchronize(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventSynchronize(event);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaEventDestroy(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventDestroy(event);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaEventElapsedTime(SEXP r_start, SEXP r_end)
{
    SEXP r_ans = R_NilValue;
    float ms;
    cudaEvent_t start = (cudaEvent_t) getRReference(r_start);
    cudaEvent_t end = (cudaEvent_t) getRReference(r_end);
    cudaError_t ans;
    ans = cudaEventElapsedTime(& ms,  start,  end);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(ms) ;
    return(r_ans);
}
