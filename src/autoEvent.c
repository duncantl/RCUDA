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
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventQuery(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventQuery(hEvent);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventSynchronize(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventSynchronize(hEvent);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuEventDestroy(SEXP r_hEvent)
{
    SEXP r_ans = R_NilValue;
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    
    CUresult ans;
    ans = cuEventDestroy_v2(hEvent);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
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
