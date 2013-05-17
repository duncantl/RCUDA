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


SEXP R_cuStreamWaitEvent(SEXP r_hStream, SEXP r_hEvent, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUevent hEvent = (CUevent) getRReference(r_hEvent);
    unsigned int Flags = REAL(r_Flags)[0];
    
    CUresult ans;
    ans = cuStreamWaitEvent(hStream, hEvent, Flags);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamAddCallback(SEXP r_hStream, SEXP r_callback, SEXP r_userData, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUstreamCallback callback = (CUstreamCallback) getRReference(r_callback);
    void * userData = GET_REF(r_userData, void *);
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuStreamAddCallback(hStream, callback, userData, flags);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamQuery(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamQuery(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamSynchronize(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamSynchronize(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuStreamDestroy(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamDestroy_v2(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}
