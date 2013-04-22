#include "RCUDA.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaGetDeviceProperties(SEXP r_arg1, SEXP r_arg2, SEXP r__copy, SEXP r_resultLength)
{
    
    	SEXP r_ans = R_NilValue;
    	SEXP r_names = R_NilValue;
    	int r_ctr = 0;
    	struct  cudaDeviceProp arg1 , *_p_arg1 = &arg1;
    	 int arg2 ;
    	  cudaError_t ans ;
    
    	 if(GET_LENGTH( r_arg1 ) > 0)  {
    	 	_p_arg1  =  (struct  cudaDeviceProp *  ) R_getNativeReference(r_arg1, "cudaDevicePropPtr", NULL) ;
    	 }
    	 arg2  =  asInteger( r_arg2 ); ;
    
    	 ans =  cudaGetDeviceProperties ( _p_arg1, arg2 );
    
    	 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 SET_VECTOR_ELT(r_ans, 0,  Renum_convert_cudaError_t( ans ) );
	 SET_STRING_ELT(r_names, 0, mkChar(".result"));
	 r_ctr++;
	 
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	      if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_arg1 ) == 0) {
	           PROBLEM "ignoring request to not copy argument arg1 as only local/stack value is available"
	           WARN;
	      }
	      SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_arg1 ) > 0 ?  r_arg1 : R_copyStruct_cudaDeviceProp( &*_p_arg1 ) );
	     SET_STRING_ELT( r_names, r_ctr++, mkChar("arg1"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
    
    	 return(r_ans);
}
 
