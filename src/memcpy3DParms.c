#include "RCUDA.h" 

#if 0


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_cudaMemcpy3DParms ( struct  cudaMemcpy3DParms   *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("cudaMemcpy3DParms");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class cudaMemcpy3DParms "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("srcArray"), R_createNativeReference( (void *)  value -> srcArray ,  "cudaArrayPtr" , "cudaArrayPtr" ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("srcPos"), R_copyStruct_cudaPos( &value -> srcPos ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("srcPtr"), R_copyStruct_cudaPitchedPtr( &value -> srcPtr ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("dstArray"), R_createNativeReference( (void *)  value -> dstArray ,  "cudaArrayPtr" , "cudaArrayPtr" ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("dstPos"), R_copyStruct_cudaPos( &value -> dstPos ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("dstPtr"), R_copyStruct_cudaPitchedPtr( &value -> dstPtr ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("extent"), R_copyStruct_cudaExtent( &value -> extent ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("kind"), Renum_convert_cudaMemcpyKind( value -> kind ) ));
    UNPROTECT( 10 );
    
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_srcArray (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_createNativeReference( (void *)  obj->srcArray ,  "cudaArrayPtr" , "cudaArrayPtr" ) : R_createNativeReference( (void *)  &( obj->srcArray ) ,  "cudaArray_tPtr" , "cudaArray_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_srcPos (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_cudaPos( &obj->srcPos ) : R_createNativeReference( (void *)  &( obj->srcPos ) ,  "cudaPosPtr" , "cudaPosPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_srcPtr (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_cudaPitchedPtr( &obj->srcPtr ) : R_createNativeReference( (void *)  &( obj->srcPtr ) ,  "cudaPitchedPtrPtr" , "cudaPitchedPtrPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_dstArray (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_createNativeReference( (void *)  obj->dstArray ,  "cudaArrayPtr" , "cudaArrayPtr" ) : R_createNativeReference( (void *)  &( obj->dstArray ) ,  "cudaArray_tPtr" , "cudaArray_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_dstPos (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_cudaPos( &obj->dstPos ) : R_createNativeReference( (void *)  &( obj->dstPos ) ,  "cudaPosPtr" , "cudaPosPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_dstPtr (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_cudaPitchedPtr( &obj->dstPtr ) : R_createNativeReference( (void *)  &( obj->dstPtr ) ,  "cudaPitchedPtrPtr" , "cudaPitchedPtrPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_extent (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_cudaExtent( &obj->extent ) : R_createNativeReference( (void *)  &( obj->extent ) ,  "cudaExtentPtr" , "cudaExtentPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_get_kind (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaMemcpy3DParms *obj ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    return(  INTEGER(r_copy)[0] ? Renum_convert_cudaMemcpyKind( obj->kind ) : R_createNativeReference( (void *)  &( obj->kind ) ,  "cudaMemcpyKindPtr" , "cudaMemcpyKindPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_srcArray (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
     cudaArray_t value  = DEREF_PTR( r_value ,  cudaArray_t ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> srcArray = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_srcPos (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
    struct  cudaPos value  = * ( struct  cudaPos    *) R_getNativeReference( r_value , "cudaPosPtr" , "cudaPosPtr" ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> srcPos = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_srcPtr (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
    struct  cudaPitchedPtr value  = * ( struct  cudaPitchedPtr    *) R_getNativeReference( r_value , "cudaPitchedPtrPtr" , "cudaPitchedPtrPtr" ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> srcPtr = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_dstArray (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
     cudaArray_t value  = DEREF_PTR( r_value ,  cudaArray_t ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> dstArray = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_dstPos (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
    struct  cudaPos value  = * ( struct  cudaPos    *) R_getNativeReference( r_value , "cudaPosPtr" , "cudaPosPtr" ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> dstPos = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_dstPtr (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
    struct  cudaPitchedPtr value  = * ( struct  cudaPitchedPtr    *) R_getNativeReference( r_value , "cudaPitchedPtrPtr" , "cudaPitchedPtrPtr" ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> dstPtr = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_extent (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
    struct  cudaExtent value  = * ( struct  cudaExtent    *) R_getNativeReference( r_value , "cudaExtentPtr" , "cudaExtentPtr" ) ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> extent = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaMemcpy3DParmsPtr_set_kind (SEXP r_obj , SEXP r_value  )
{
    struct  cudaMemcpy3DParms *obj ;
     enum cudaMemcpyKind value  = ( enum cudaMemcpyKind ) INTEGER( r_value )[0] ;
    obj = ( struct  cudaMemcpy3DParms * )  R_getNativeReference(r_obj, "cudaMemcpy3DParms", NULL) ;
    obj -> kind = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
struct  cudaMemcpy3DParms *  
coerce_cudaMemcpy3DParms_cudaMemcpy3DParmsPtr ( SEXP r_from,  struct  cudaMemcpy3DParms * ans  )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  cudaMemcpy3DParms *   ) malloc( sizeof( struct  cudaMemcpy3DParms   ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("srcArray"));
    ans->srcArray = DEREF_PTR( tmp ,  cudaArray_t ) ;
    tmp = GET_SLOT(r_from, Rf_install("srcPos"));
    coerce_cudaPos_cudaPosPtr ( tmp , & ans -> srcPos );
    tmp = GET_SLOT(r_from, Rf_install("srcPtr"));
    coerce_cudaPitchedPtr_cudaPitchedPtrPtr ( tmp , & ans -> srcPtr );
    tmp = GET_SLOT(r_from, Rf_install("dstArray"));
    ans->dstArray = DEREF_PTR( tmp ,  cudaArray_t ) ;
    tmp = GET_SLOT(r_from, Rf_install("dstPos"));
    coerce_cudaPos_cudaPosPtr ( tmp , & ans -> dstPos );
    tmp = GET_SLOT(r_from, Rf_install("dstPtr"));
    coerce_cudaPitchedPtr_cudaPitchedPtrPtr ( tmp , & ans -> dstPtr );
    tmp = GET_SLOT(r_from, Rf_install("extent"));
    coerce_cudaExtent_cudaExtentPtr ( tmp , & ans -> extent );
    tmp = GET_SLOT(r_from, Rf_install("kind"));
    ans->kind = ( enum cudaMemcpyKind ) INTEGER( tmp )[0] ;
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_cudaMemcpy3DParms_cudaMemcpy3DParmsPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_cudaMemcpy3DParms_cudaMemcpy3DParmsPtr (r_from, NULL), "cudaMemcpy3DParmsPtr" , "cudaMemcpy3DParmsPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_cudaMemcpy3DParmsPtr_cudaMemcpy3DParms ( SEXP from )
{
    struct  cudaMemcpy3DParms * ans ;
    ans = (struct  cudaMemcpy3DParms *  ) R_getNativeReference(from, "cudaMemcpy3DParms", NULL);
    return( R_copyStruct_cudaMemcpy3DParms ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_cudaMemcpy3DParms ()
{
    SEXP r_ans = R_NilValue;
    struct  cudaMemcpy3DParms   * ans;
    
    ans = ( struct  cudaMemcpy3DParms   *) calloc (1, sizeof( struct  cudaMemcpy3DParms   ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "cudaMemcpy3DParmsPtr" , "cudaMemcpy3DParmsPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_cudaMemcpy3DParmsPtr_finalizer (SEXP val)
{
    struct  cudaMemcpy3DParms   * ans = NULL;
    ans = ( struct  cudaMemcpy3DParms   * ) R_ExternalPtrAddr(val);
     if(ans) {
    #ifdef DEBUG_R_FINALIZERS
       fprintf(stderr, "freeing cudaMemcpy3DParms  %p\n", ans);
    #endif
        free(ans);
    }
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_cudaMemcpy3DParmsPtr (SEXP val)
{
    struct  cudaMemcpy3DParms   * ans = NULL;
    ans =  (struct  cudaMemcpy3DParms *  ) R_getNativeReference(val, "cudaMemcpy3DParmsPtr", NULL) ;
    
     if(ans) {
    #ifdef DEBUG_R_FINALIZERS
       fprintf(stderr, "freeing cudaMemcpy3DParms  %p\n", ans);
    #endif
        free(ans);
    }
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_cudaMemcpy3DParms (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  cudaMemcpy3DParms * value ;
    struct  cudaMemcpy3DParms * ans ;
    SEXP r_ans;
    
    value = (struct  cudaMemcpy3DParms *  ) R_getNativeReference(r_value, "cudaMemcpy3DParmsPtr", NULL) ;
    ans = ( struct  cudaMemcpy3DParms    *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "cudaMemcpy3DParmsPtr" , "cudaMemcpy3DParmsPtr" ) ;
    return(r_ans);
} 


#endif
