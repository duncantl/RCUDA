// Generated programmatically at 2016-07-15 18:47:23 
#include "RCUDA.h"


SEXP
R_cuFuncGetAttribute(SEXP r_attrib, SEXP r_hfunc)
{
    SEXP r_ans = R_NilValue;
    int pi;
    CUfunction_attribute attrib = (CUfunction_attribute) INTEGER(r_attrib)[0];
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    CUresult ans;
    ans = cuFuncGetAttribute(& pi,  attrib,  hfunc);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(pi) ;
    return(r_ans);
}


SEXP R_cuFuncSetCacheConfig(SEXP r_hfunc, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    CUfunc_cache config = (CUfunc_cache) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuFuncSetCacheConfig(hfunc, config);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuFuncSetSharedMemConfig(SEXP r_hfunc, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    CUsharedconfig config = (CUsharedconfig) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuFuncSetSharedMemConfig(hfunc, config);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuFuncSetBlockShape(SEXP r_hfunc, SEXP r_x, SEXP r_y, SEXP r_z)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    int x = INTEGER(r_x)[0];
    int y = INTEGER(r_y)[0];
    int z = INTEGER(r_z)[0];
    
    CUresult ans;
    ans = cuFuncSetBlockShape(hfunc, x, y, z);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuFuncSetSharedSize(SEXP r_hfunc, SEXP r_bytes)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    unsigned int bytes = REAL(r_bytes)[0];
    
    CUresult ans;
    ans = cuFuncSetSharedSize(hfunc, bytes);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cudaFuncSetCacheConfig(SEXP r_func, SEXP r_cacheConfig)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    enum cudaFuncCache cacheConfig = (enum cudaFuncCache) INTEGER(r_cacheConfig)[0];
    
    cudaError_t ans;
    ans = cudaFuncSetCacheConfig(func, cacheConfig);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaFuncSetSharedMemConfig(SEXP r_func, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    enum cudaSharedMemConfig config = (enum cudaSharedMemConfig) INTEGER(r_config)[0];
    
    cudaError_t ans;
    ans = cudaFuncSetSharedMemConfig(func, config);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaFuncGetAttributes(SEXP r_func)
{
    SEXP r_ans = R_NilValue;
    struct cudaFuncAttributes attr;
    const void * func = GET_REF(r_func, const void );
    cudaError_t ans;
    ans = cudaFuncGetAttributes(& attr,  func);
    if(ans)
       return(R_cudaError_t_Info(ans));
    struct cudaFuncAttributes * _tmp = (struct cudaFuncAttributes *) malloc( sizeof( struct cudaFuncAttributes ));
    *_tmp = attr;
    r_ans = R_createRef(_tmp, "cudaFuncAttributes");
    return(r_ans);
}
