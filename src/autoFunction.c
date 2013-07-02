// Generated programmatically at 2013-07-02 13:50:48 
#include "RCUDA.h"


SEXP
R_auto_cuFuncGetAttribute(SEXP r_attrib, SEXP r_hfunc)
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


SEXP R_auto_cuFuncSetCacheConfig(SEXP r_hfunc, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    CUfunc_cache config = (CUfunc_cache) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuFuncSetCacheConfig(hfunc, config);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuFuncSetSharedMemConfig(SEXP r_hfunc, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    CUsharedconfig config = (CUsharedconfig) INTEGER(r_config)[0];
    
    CUresult ans;
    ans = cuFuncSetSharedMemConfig(hfunc, config);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuFuncSetBlockShape(SEXP r_hfunc, SEXP r_x, SEXP r_y, SEXP r_z)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    int x = INTEGER(r_x)[0];
    int y = INTEGER(r_y)[0];
    int z = INTEGER(r_z)[0];
    
    CUresult ans;
    ans = cuFuncSetBlockShape(hfunc, x, y, z);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuFuncSetSharedSize(SEXP r_hfunc, SEXP r_bytes)
{
    SEXP r_ans = R_NilValue;
    CUfunction hfunc = (CUfunction) getRReference(r_hfunc);
    unsigned int bytes = REAL(r_bytes)[0];
    
    CUresult ans;
    ans = cuFuncSetSharedSize(hfunc, bytes);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}
