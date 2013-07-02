/* We may move this to RAutoGenRunTime as it is not CUDA specific. */
#include <Rdefines.h>

#include <stdlib.h>

void
R_freeFloatArray(SEXP obj)
{
   float *fl =  (float *) R_ExternalPtrAddr(obj);
   if(fl) {
       free(fl);
       R_ClearExternalPtr(obj);
   }
}

SEXP
R_makeFloatArray(SEXP robj)
{
    size_t len = Rf_length(robj);
    float *fl = (float *) malloc(len * sizeof(float));
    int isInt = TYPEOF(robj) == INTSXP || TYPEOF(robj) == LGLSXP;

    if(!isInt && TYPEOF(robj) != REALSXP) {
	PROBLEM "only integers, logicals or numeric vectors can be passed to makeFloatArray"
        ERROR;
    }
    if(isInt) {
	int *integers = INTEGER(robj);
	for(size_t i = 0 ; i < len; i++) 
	    fl[i] = (float) integers[i];
    } else {
	double *numerics = REAL(robj);
	for(size_t i = 0 ; i < len; i++) 
	    fl[i] = (float) numerics[i];
    }

    SEXP r_ans;
    PROTECT(r_ans = R_MakeExternalPtr(fl, Rf_install("floatArray"), R_NilValue));
    R_RegisterCFinalizer(r_ans, R_freeFloatArray);
    UNPROTECT(1);
    return(r_ans);
}


SEXP
R_getRObjectPointer(SEXP r_obj)
{
    void *ptr = NULL;
    switch(TYPEOF(r_obj)) {
       case INTSXP:
	  ptr = INTEGER(r_obj);
	  break;
       case LGLSXP:
	  ptr = LOGICAL(r_obj);
	  break;
       case REALSXP:
          ptr = REAL(r_obj);
	  break;
       case EXTPTRSXP:
	  ptr = R_ExternalPtrAddr(r_obj);
	  break;
       default:
	   PROBLEM "unhandled case for getRObjectPointer"
           ERROR;
	   break;
    }

    return(R_MakeExternalPtr(ptr, Rf_install("RObject"), R_NilValue));
}
