#if 0
#include "RCUDA.h"



SEXP
R_cuCtxCreate(SEXP r_flags, SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    unsigned int flags = REAL(r_flags)[0];
    int dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuCtxCreate(& pctx,  flags,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pctx, "CUcontext") ;
    return(r_ans);
}


SEXP R_cuCtxDestroy(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    
    CUresult ans;
    ans = cuCtxDestroy_v2(ctx);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxPushCurrent(SEXP r_ctx)
{
    SEXP r_ans = R_NilValue;
    CUcontext ctx = (CUcontext) getRReference(r_ctx);
    
    CUresult ans;
    ans = cuCtxPushCurrent_v2(ctx);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxPopCurrent()
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    CUresult ans;
    ans = cuCtxPopCurrent(& pctx);
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
    
    r_ans = Renum_convert_CUresult(ans) ;
    
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


SEXP R_cuCtxSynchronize()
{
    SEXP r_ans = R_NilValue;
    
    CUresult ans;
    ans = cuCtxSynchronize();
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxSetLimit(SEXP r_limit, SEXP r_value)
{
    SEXP r_ans = R_NilValue;
    enum CUlimit_enum limit = (enum CUlimit_enum) INTEGER(r_limit)[0];
    unsigned long value = REAL(r_value)[0];
    
    CUresult ans;
    ans = cuCtxSetLimit(limit, value);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_cuCtxGetLimit(SEXP r_limit)
{
    SEXP r_ans = R_NilValue;
    size_t pvalue;
    enum CUlimit_enum limit = (enum CUlimit_enum) INTEGER(r_limit)[0];
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
    r_ans = Renum_convert_CUfunc_cache(pconfig) ;
    return(r_ans);
}



SEXP R_cuCtxSetCacheConfig(SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    enum CUfunc_cache_enum config = (enum CUfunc_cache_enum) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuCtxSetCacheConfig(config);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
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
    r_ans = Renum_convert_CUsharedconfig(pConfig) ;
    return(r_ans);
}


SEXP R_cuCtxSetSharedMemConfig(SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    enum CUsharedconfig_enum config = (enum CUsharedconfig_enum) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuCtxSetSharedMemConfig(config);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
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


SEXP R_cuCtxEnablePeerAccess(SEXP r_peerContext, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUcontext peerContext = (CUcontext) getRReference(r_peerContext);
    unsigned int Flags = REAL(r_Flags)[0];
    
    CUresult ans;
    ans = cuCtxEnablePeerAccess(peerContext, Flags);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_cuCtxDisablePeerAccess(SEXP r_peerContext)
{
    SEXP r_ans = R_NilValue;
    CUcontext peerContext = (CUcontext) getRReference(r_peerContext);
    
    CUresult ans;
    ans = cuCtxDisablePeerAccess(peerContext);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}
#else
enum {A};
#endif
