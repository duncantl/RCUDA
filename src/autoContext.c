// Generated programmatically at 2016-07-15 18:47:23 
#include "RCUDA.h"


SEXP
R_cuCtxCreate_v2(SEXP r_flags, SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    unsigned int flags = REAL(r_flags)[0];
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuCtxCreate_v2(& pctx,  flags,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pctx, "CUcontext") ;
    return(r_ans);
}


SEXP R_cuCtxDestroy_v2(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    
    CUresult ans;
    ans = cuCtxDestroy_v2(ctx);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxPushCurrent_v2(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    
    CUresult ans;
    ans = cuCtxPushCurrent_v2(ctx);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxPopCurrent_v2()
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    CUresult ans;
    ans = cuCtxPopCurrent_v2(& pctx);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pctx, "CUcontext") ;
    return(r_ans);
}


SEXP R_cuCtxSetCurrent(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    
    CUresult ans;
    ans = cuCtxSetCurrent(ctx);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxGetCurrent()
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    CUresult ans;
    ans = cuCtxGetCurrent(& pctx);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pctx, "CUcontext") ;
    return(r_ans);
}


SEXP
R_cuCtxGetDevice()
{
    SEXP r_ans = R_NilValue;
    CUdevice device;
    CUresult ans;
    ans = cuCtxGetDevice(& device);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(device) ;
    return(r_ans);
}


SEXP
R_cuCtxGetFlags()
{
    SEXP r_ans = R_NilValue;
    unsigned int flags;
    CUresult ans;
    ans = cuCtxGetFlags(& flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(flags) ;
    return(r_ans);
}


SEXP R_cuCtxSynchronize()
{
    SEXP r_ans = R_NilValue;
    
    CUresult ans;
    ans = cuCtxSynchronize();
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxSetLimit(SEXP r_limit, SEXP r_value)
{
    SEXP r_ans = R_NilValue;
    CUlimit limit = (CUlimit) INTEGER(r_limit)[0];
    size_t value = REAL(r_value)[0];
    
    CUresult ans;
    ans = cuCtxSetLimit(limit, value);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxGetLimit(SEXP r_limit)
{
    SEXP r_ans = R_NilValue;
    size_t pvalue;
    CUlimit limit = (CUlimit) INTEGER(r_limit)[0];
    CUresult ans;
    ans = cuCtxGetLimit(& pvalue,  limit);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(pvalue) ;
    return(r_ans);
}


SEXP
R_cuCtxGetCacheConfig()
{
    SEXP r_ans = R_NilValue;
    CUfunc_cache pconfig;
    CUresult ans;
    ans = cuCtxGetCacheConfig(& pconfig);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = Renum_convert_CUfunc_cache_enum(pconfig) ;
    return(r_ans);
}


SEXP R_cuCtxSetCacheConfig(SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUfunc_cache config = (CUfunc_cache) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuCtxSetCacheConfig(config);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxGetSharedMemConfig()
{
    SEXP r_ans = R_NilValue;
    CUsharedconfig pConfig;
    CUresult ans;
    ans = cuCtxGetSharedMemConfig(& pConfig);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = Renum_convert_CUsharedconfig_enum(pConfig) ;
    return(r_ans);
}


SEXP R_cuCtxSetSharedMemConfig(SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUsharedconfig config = (CUsharedconfig) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuCtxSetSharedMemConfig(config);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxGetApiVersion(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    unsigned int version;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    CUresult ans;
    ans = cuCtxGetApiVersion( ctx, & version);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(version) ;
    return(r_ans);
}


SEXP
R_cuCtxGetStreamPriorityRange()
{
    SEXP r_ans = R_NilValue;
    int leastPriority;
    int greatestPriority;
    CUresult ans;
    ans = cuCtxGetStreamPriorityRange(& leastPriority, & greatestPriority);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarInteger(leastPriority));
    SET_VECTOR_ELT(r_ans, 1, ScalarInteger(greatestPriority));
    SET_STRING_ELT(r_names, 0, mkChar("leastPriority"));
    SET_STRING_ELT(r_names, 1, mkChar("greatestPriority"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cuCtxEnablePeerAccess(SEXP r_peerContext, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUcontext peerContext = (CUcontext) getRReference(r_peerContext);
    unsigned int Flags = REAL(r_Flags)[0];
    
    CUresult ans;
    ans = cuCtxEnablePeerAccess(peerContext, Flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxDisablePeerAccess(SEXP r_peerContext)
{
    SEXP r_ans = R_NilValue;
    CUcontext peerContext = (CUcontext) getRReference(r_peerContext);
    
    CUresult ans;
    ans = cuCtxDisablePeerAccess(peerContext);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}
