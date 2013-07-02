// Generated programmatically at 2013-07-02 13:51:14 
#include "RCUDA.h"


SEXP
R_auto_cuModuleLoad(SEXP r_fname)
{
    SEXP r_ans = R_NilValue;
    CUmodule module;
    const char * fname = CHAR(STRING_ELT(r_fname, 0));
    CUresult ans;
    ans = cuModuleLoad(& module,  fname);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(module, "CUmodule") ;
    return(r_ans);
}


SEXP
R_auto_cuModuleLoadData(SEXP r_image)
{
    SEXP r_ans = R_NilValue;
    CUmodule module;
    const void * image = GET_REF(r_image, const void );
    CUresult ans;
    ans = cuModuleLoadData(& module,  image);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(module, "CUmodule") ;
    return(r_ans);
}


SEXP
R_auto_cuModuleLoadFatBinary(SEXP r_fatCubin)
{
    SEXP r_ans = R_NilValue;
    CUmodule module;
    const void * fatCubin = GET_REF(r_fatCubin, const void );
    CUresult ans;
    ans = cuModuleLoadFatBinary(& module,  fatCubin);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(module, "CUmodule") ;
    return(r_ans);
}


SEXP R_auto_cuModuleUnload(SEXP r_hmod)
{
    SEXP r_ans = R_NilValue;
    CUmodule hmod = (CUmodule) getRReference(r_hmod);
    
    CUresult ans;
    ans = cuModuleUnload(hmod);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuModuleGetFunction(SEXP r_hfunc, SEXP r_hmod, SEXP r_name)
{
    SEXP r_ans = R_NilValue;
    CUfunction * hfunc = GET_REF(r_hfunc, CUfunction );
    CUmodule hmod = (CUmodule) getRReference(r_hmod);
    const char * name = CHAR(STRING_ELT(r_name, 0));
    
    CUresult ans;
    ans = cuModuleGetFunction(hfunc, hmod, name);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cuModuleGetGlobal(SEXP r_hmod, SEXP r_name)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dptr;
    size_t bytes;
    CUmodule hmod = (CUmodule) getRReference(r_hmod);
    const char * name = CHAR(STRING_ELT(r_name, 0));
    CUresult ans;
    ans = cuModuleGetGlobal(& dptr, & bytes,  hmod,  name);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef((void*) dptr, "CUdeviceptr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(bytes));
    SET_STRING_ELT(r_names, 0, mkChar("dptr"));
    SET_STRING_ELT(r_names, 1, mkChar("bytes"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_auto_cuModuleGetTexRef(SEXP r_hmod, SEXP r_name)
{
    SEXP r_ans = R_NilValue;
    CUtexref pTexRef;
    CUmodule hmod = (CUmodule) getRReference(r_hmod);
    const char * name = CHAR(STRING_ELT(r_name, 0));
    CUresult ans;
    ans = cuModuleGetTexRef(& pTexRef,  hmod,  name);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pTexRef, "CUtexref") ;
    return(r_ans);
}


SEXP
R_auto_cuModuleGetSurfRef(SEXP r_hmod, SEXP r_name)
{
    SEXP r_ans = R_NilValue;
    CUsurfref pSurfRef;
    CUmodule hmod = (CUmodule) getRReference(r_hmod);
    const char * name = CHAR(STRING_ELT(r_name, 0));
    CUresult ans;
    ans = cuModuleGetSurfRef(& pSurfRef,  hmod,  name);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pSurfRef, "CUsurfref") ;
    return(r_ans);
}
