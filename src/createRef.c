#include <Rdefines.h>

void *
getRReference(SEXP val)
{
    SEXP tmp = val; 
    if(TYPEOF(tmp) != EXTPTRSXP) 
         tmp = GET_SLOT(tmp, Rf_install("ref")); 
    else
       tmp = val;
    return(R_ExternalPtrAddr(tmp));
}


SEXP
R_createReference(const void *ptr, const char * const className, const char * tag, R_CFinalizer_t finalizer)
{
    SEXP ans, klass, tmp;
    PROTECT(klass = MAKE_CLASS(className));
    PROTECT(ans = NEW_OBJECT(klass));
    if(!tag)
        tag = className;
    SET_SLOT(ans, Rf_install("ref"), tmp = R_MakeExternalPtr((void*)ptr, Rf_install(tag), R_NilValue));
    if(finalizer)
       R_RegisterCFinalizer(tmp, finalizer);

    UNPROTECT(2);
    return(ans);
}
