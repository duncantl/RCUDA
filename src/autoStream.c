// Generated programmatically at 2013-07-02 13:28:04 
#include "RCUDA.h"


SEXP
R_auto_cuStreamCreate(SEXP r_Flags)
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
R_auto_cuStreamCreateWithPriority(SEXP r_flags, SEXP r_priority)
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
R_auto_cuStreamGetPriority(SEXP r_hStream)
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
R_auto_cuStreamGetFlags(SEXP r_hStream)
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


SEXP R_auto_cuStreamWaitEvent(SEXP r_hStream, SEXP r_hEvent, SEXP r_Flags)
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


SEXP R_auto_cuStreamAddCallback(SEXP r_hStream, SEXP r_callback, SEXP r_userData, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUstreamCallback callback = (CUstreamCallback) getRReference(r_callback);
    void * userData = GET_REF(r_userData, void );
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuStreamAddCallback(hStream, callback, userData, flags);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuStreamQuery(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamQuery(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuStreamSynchronize(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamSynchronize(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuStreamDestroy(SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuStreamDestroy_v2(hStream);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}
