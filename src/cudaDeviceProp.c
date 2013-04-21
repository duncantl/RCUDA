#include "RCUDA.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_cudaDeviceProp ( struct  cudaDeviceProp   *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("cudaDeviceProp");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class cudaDeviceProp "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("name"), convertCharArrayToR ( value -> name , 256 , 0, 255 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("totalGlobalMem"), ScalarReal( value -> totalGlobalMem ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("sharedMemPerBlock"), ScalarReal( value -> sharedMemPerBlock ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("regsPerBlock"), ScalarInteger( value -> regsPerBlock ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("warpSize"), ScalarInteger( value -> warpSize ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("memPitch"), ScalarReal( value -> memPitch ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxThreadsPerBlock"), ScalarInteger( value -> maxThreadsPerBlock ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxThreadsDim"), convertIntArrayToR ( value -> maxThreadsDim , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxGridSize"), convertIntArrayToR ( value -> maxGridSize , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("clockRate"), ScalarInteger( value -> clockRate ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("totalConstMem"), ScalarReal( value -> totalConstMem ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("major"), ScalarInteger( value -> major ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("minor"), ScalarInteger( value -> minor ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("textureAlignment"), ScalarReal( value -> textureAlignment ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("texturePitchAlignment"), ScalarReal( value -> texturePitchAlignment ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("deviceOverlap"), ScalarInteger( value -> deviceOverlap ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("multiProcessorCount"), ScalarInteger( value -> multiProcessorCount ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("kernelExecTimeoutEnabled"), ScalarInteger( value -> kernelExecTimeoutEnabled ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("integrated"), ScalarInteger( value -> integrated ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canMapHostMemory"), ScalarInteger( value -> canMapHostMemory ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("computeMode"), ScalarInteger( value -> computeMode ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture1D"), ScalarInteger( value -> maxTexture1D ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture1DMipmap"), ScalarInteger( value -> maxTexture1DMipmap ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture1DLinear"), ScalarInteger( value -> maxTexture1DLinear ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture2D"), convertIntArrayToR ( value -> maxTexture2D , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture2DMipmap"), convertIntArrayToR ( value -> maxTexture2DMipmap , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture2DLinear"), convertIntArrayToR ( value -> maxTexture2DLinear , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture2DGather"), convertIntArrayToR ( value -> maxTexture2DGather , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture3D"), convertIntArrayToR ( value -> maxTexture3D , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTextureCubemap"), ScalarInteger( value -> maxTextureCubemap ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture1DLayered"), convertIntArrayToR ( value -> maxTexture1DLayered , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTexture2DLayered"), convertIntArrayToR ( value -> maxTexture2DLayered , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxTextureCubemapLayered"), convertIntArrayToR ( value -> maxTextureCubemapLayered , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurface1D"), ScalarInteger( value -> maxSurface1D ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurface2D"), convertIntArrayToR ( value -> maxSurface2D , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurface3D"), convertIntArrayToR ( value -> maxSurface3D , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurface1DLayered"), convertIntArrayToR ( value -> maxSurface1DLayered , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurface2DLayered"), convertIntArrayToR ( value -> maxSurface2DLayered , 3 , 0, 2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurfaceCubemap"), ScalarInteger( value -> maxSurfaceCubemap ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxSurfaceCubemapLayered"), convertIntArrayToR ( value -> maxSurfaceCubemapLayered , 2 , 0, 1 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("surfaceAlignment"), ScalarReal( value -> surfaceAlignment ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("concurrentKernels"), ScalarInteger( value -> concurrentKernels ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ECCEnabled"), ScalarInteger( value -> ECCEnabled ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("pciBusID"), ScalarInteger( value -> pciBusID ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("pciDeviceID"), ScalarInteger( value -> pciDeviceID ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("pciDomainID"), ScalarInteger( value -> pciDomainID ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("tccDriver"), ScalarInteger( value -> tccDriver ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("asyncEngineCount"), ScalarInteger( value -> asyncEngineCount ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("unifiedAddressing"), ScalarInteger( value -> unifiedAddressing ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("memoryClockRate"), ScalarInteger( value -> memoryClockRate ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("memoryBusWidth"), ScalarInteger( value -> memoryBusWidth ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("l2CacheSize"), ScalarInteger( value -> l2CacheSize ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("maxThreadsPerMultiProcessor"), ScalarInteger( value -> maxThreadsPerMultiProcessor ) ));
    UNPROTECT( 55 );
    
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_name (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertCharArrayToR ( obj->name , 256 , 0, 255 ) : R_createArrayReference( obj->name ,  "Array" ,  "charPtr" ,  (int[]) { 256 }, 1 , sizeof( char [ 256 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_totalGlobalMem (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->totalGlobalMem ) : R_createNativeReference( (void *)  &( obj->totalGlobalMem ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_sharedMemPerBlock (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->sharedMemPerBlock ) : R_createNativeReference( (void *)  &( obj->sharedMemPerBlock ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_regsPerBlock (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->regsPerBlock ) : R_createNativeReference( (void *)  &( obj->regsPerBlock ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_warpSize (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->warpSize ) : R_createNativeReference( (void *)  &( obj->warpSize ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_memPitch (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->memPitch ) : R_createNativeReference( (void *)  &( obj->memPitch ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxThreadsPerBlock (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxThreadsPerBlock ) : R_createNativeReference( (void *)  &( obj->maxThreadsPerBlock ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxThreadsDim (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxThreadsDim , 3 , 0, 2 ) : R_createArrayReference( obj->maxThreadsDim ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxGridSize (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxGridSize , 3 , 0, 2 ) : R_createArrayReference( obj->maxGridSize ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_clockRate (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->clockRate ) : R_createNativeReference( (void *)  &( obj->clockRate ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_totalConstMem (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->totalConstMem ) : R_createNativeReference( (void *)  &( obj->totalConstMem ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_major (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->major ) : R_createNativeReference( (void *)  &( obj->major ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_minor (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->minor ) : R_createNativeReference( (void *)  &( obj->minor ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_textureAlignment (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->textureAlignment ) : R_createNativeReference( (void *)  &( obj->textureAlignment ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_texturePitchAlignment (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->texturePitchAlignment ) : R_createNativeReference( (void *)  &( obj->texturePitchAlignment ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_deviceOverlap (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->deviceOverlap ) : R_createNativeReference( (void *)  &( obj->deviceOverlap ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_multiProcessorCount (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->multiProcessorCount ) : R_createNativeReference( (void *)  &( obj->multiProcessorCount ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_kernelExecTimeoutEnabled (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->kernelExecTimeoutEnabled ) : R_createNativeReference( (void *)  &( obj->kernelExecTimeoutEnabled ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_integrated (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->integrated ) : R_createNativeReference( (void *)  &( obj->integrated ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_canMapHostMemory (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->canMapHostMemory ) : R_createNativeReference( (void *)  &( obj->canMapHostMemory ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_computeMode (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->computeMode ) : R_createNativeReference( (void *)  &( obj->computeMode ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture1D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxTexture1D ) : R_createNativeReference( (void *)  &( obj->maxTexture1D ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture1DMipmap (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxTexture1DMipmap ) : R_createNativeReference( (void *)  &( obj->maxTexture1DMipmap ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture1DLinear (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxTexture1DLinear ) : R_createNativeReference( (void *)  &( obj->maxTexture1DLinear ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture2D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture2D , 2 , 0, 1 ) : R_createArrayReference( obj->maxTexture2D ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture2DMipmap (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture2DMipmap , 2 , 0, 1 ) : R_createArrayReference( obj->maxTexture2DMipmap ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture2DLinear (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture2DLinear , 3 , 0, 2 ) : R_createArrayReference( obj->maxTexture2DLinear ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture2DGather (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture2DGather , 2 , 0, 1 ) : R_createArrayReference( obj->maxTexture2DGather ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture3D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture3D , 3 , 0, 2 ) : R_createArrayReference( obj->maxTexture3D ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTextureCubemap (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxTextureCubemap ) : R_createNativeReference( (void *)  &( obj->maxTextureCubemap ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture1DLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture1DLayered , 2 , 0, 1 ) : R_createArrayReference( obj->maxTexture1DLayered ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTexture2DLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTexture2DLayered , 3 , 0, 2 ) : R_createArrayReference( obj->maxTexture2DLayered ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxTextureCubemapLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxTextureCubemapLayered , 2 , 0, 1 ) : R_createArrayReference( obj->maxTextureCubemapLayered ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurface1D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxSurface1D ) : R_createNativeReference( (void *)  &( obj->maxSurface1D ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurface2D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxSurface2D , 2 , 0, 1 ) : R_createArrayReference( obj->maxSurface2D ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurface3D (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxSurface3D , 3 , 0, 2 ) : R_createArrayReference( obj->maxSurface3D ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurface1DLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxSurface1DLayered , 2 , 0, 1 ) : R_createArrayReference( obj->maxSurface1DLayered ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurface2DLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxSurface2DLayered , 3 , 0, 2 ) : R_createArrayReference( obj->maxSurface2DLayered ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurfaceCubemap (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxSurfaceCubemap ) : R_createNativeReference( (void *)  &( obj->maxSurfaceCubemap ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxSurfaceCubemapLayered (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( obj->maxSurfaceCubemapLayered , 2 , 0, 1 ) : R_createArrayReference( obj->maxSurfaceCubemapLayered ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_surfaceAlignment (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj->surfaceAlignment ) : R_createNativeReference( (void *)  &( obj->surfaceAlignment ) ,  "size_tPtr" , "size_tPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_concurrentKernels (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->concurrentKernels ) : R_createNativeReference( (void *)  &( obj->concurrentKernels ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_ECCEnabled (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->ECCEnabled ) : R_createNativeReference( (void *)  &( obj->ECCEnabled ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_pciBusID (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->pciBusID ) : R_createNativeReference( (void *)  &( obj->pciBusID ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_pciDeviceID (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->pciDeviceID ) : R_createNativeReference( (void *)  &( obj->pciDeviceID ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_pciDomainID (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->pciDomainID ) : R_createNativeReference( (void *)  &( obj->pciDomainID ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_tccDriver (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->tccDriver ) : R_createNativeReference( (void *)  &( obj->tccDriver ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_asyncEngineCount (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->asyncEngineCount ) : R_createNativeReference( (void *)  &( obj->asyncEngineCount ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_unifiedAddressing (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->unifiedAddressing ) : R_createNativeReference( (void *)  &( obj->unifiedAddressing ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_memoryClockRate (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->memoryClockRate ) : R_createNativeReference( (void *)  &( obj->memoryClockRate ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_memoryBusWidth (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->memoryBusWidth ) : R_createNativeReference( (void *)  &( obj->memoryBusWidth ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_l2CacheSize (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->l2CacheSize ) : R_createNativeReference( (void *)  &( obj->l2CacheSize ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_get_maxThreadsPerMultiProcessor (SEXP r_obj  , SEXP r_copy )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj->maxThreadsPerMultiProcessor ) : R_createNativeReference( (void *)  &( obj->maxThreadsPerMultiProcessor ) ,  "intPtr" , "intPtr" ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_name (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       convertRCharacterToCharArray(obj->name, r_value, 256);
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_totalGlobalMem (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> totalGlobalMem = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_sharedMemPerBlock (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> sharedMemPerBlock = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_regsPerBlock (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> regsPerBlock = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_warpSize (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> warpSize = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_memPitch (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> memPitch = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxThreadsPerBlock (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxThreadsPerBlock = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxThreadsDim (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxThreadsDim [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxGridSize (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxGridSize [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_clockRate (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> clockRate = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_totalConstMem (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> totalConstMem = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_major (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> major = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_minor (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> minor = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_textureAlignment (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> textureAlignment = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_texturePitchAlignment (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> texturePitchAlignment = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_deviceOverlap (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> deviceOverlap = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_multiProcessorCount (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> multiProcessorCount = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_kernelExecTimeoutEnabled (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> kernelExecTimeoutEnabled = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_integrated (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> integrated = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_canMapHostMemory (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> canMapHostMemory = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_computeMode (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> computeMode = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture1D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxTexture1D = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture1DMipmap (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxTexture1DMipmap = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture1DLinear (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxTexture1DLinear = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture2D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxTexture2D [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture2DMipmap (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxTexture2DMipmap [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture2DLinear (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxTexture2DLinear [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture2DGather (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxTexture2DGather [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture3D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxTexture3D [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTextureCubemap (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxTextureCubemap = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture1DLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxTexture1DLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTexture2DLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxTexture2DLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxTextureCubemapLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxTextureCubemapLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurface1D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxSurface1D = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurface2D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxSurface2D [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurface3D (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxSurface3D [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurface1DLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxSurface1DLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurface2DLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->maxSurface2DLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurfaceCubemap (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxSurfaceCubemap = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxSurfaceCubemapLayered (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->maxSurfaceCubemapLayered [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_surfaceAlignment (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     size_t value  = asReal( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> surfaceAlignment = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_concurrentKernels (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> concurrentKernels = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_ECCEnabled (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> ECCEnabled = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_pciBusID (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> pciBusID = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_pciDeviceID (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> pciDeviceID = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_pciDomainID (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> pciDomainID = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_tccDriver (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> tccDriver = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_asyncEngineCount (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> asyncEngineCount = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_unifiedAddressing (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> unifiedAddressing = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_memoryClockRate (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> memoryClockRate = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_memoryBusWidth (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> memoryBusWidth = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_l2CacheSize (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> l2CacheSize = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_cudaDevicePropPtr_set_maxThreadsPerMultiProcessor (SEXP r_obj , SEXP r_value  )
{
    struct  cudaDeviceProp *obj ;
     int value  = asInteger( r_value ); ;
    obj = ( struct  cudaDeviceProp * )  R_getNativeReference(r_obj, "cudaDeviceProp", NULL) ;
    obj -> maxThreadsPerMultiProcessor = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
struct  cudaDeviceProp *  
coerce_cudaDeviceProp_cudaDevicePropPtr ( SEXP r_from,  struct  cudaDeviceProp * ans  )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  cudaDeviceProp *   ) malloc( sizeof( struct  cudaDeviceProp   ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("name"));
     {
       convertRCharacterToCharArray(ans->name, tmp, 256);
     }
    tmp = GET_SLOT(r_from, Rf_install("totalGlobalMem"));
    ans->totalGlobalMem = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("sharedMemPerBlock"));
    ans->sharedMemPerBlock = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("regsPerBlock"));
    ans->regsPerBlock = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("warpSize"));
    ans->warpSize = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("memPitch"));
    ans->memPitch = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxThreadsPerBlock"));
    ans->maxThreadsPerBlock = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxThreadsDim"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxThreadsDim [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxGridSize"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxGridSize [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("clockRate"));
    ans->clockRate = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("totalConstMem"));
    ans->totalConstMem = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("major"));
    ans->major = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("minor"));
    ans->minor = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("textureAlignment"));
    ans->textureAlignment = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("texturePitchAlignment"));
    ans->texturePitchAlignment = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("deviceOverlap"));
    ans->deviceOverlap = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("multiProcessorCount"));
    ans->multiProcessorCount = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("kernelExecTimeoutEnabled"));
    ans->kernelExecTimeoutEnabled = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("integrated"));
    ans->integrated = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("canMapHostMemory"));
    ans->canMapHostMemory = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("computeMode"));
    ans->computeMode = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxTexture1D"));
    ans->maxTexture1D = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxTexture1DMipmap"));
    ans->maxTexture1DMipmap = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxTexture1DLinear"));
    ans->maxTexture1DLinear = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxTexture2D"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxTexture2D [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTexture2DMipmap"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxTexture2DMipmap [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTexture2DLinear"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxTexture2DLinear [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTexture2DGather"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxTexture2DGather [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTexture3D"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxTexture3D [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTextureCubemap"));
    ans->maxTextureCubemap = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxTexture1DLayered"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxTexture1DLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTexture2DLayered"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxTexture2DLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxTextureCubemapLayered"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxTextureCubemapLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxSurface1D"));
    ans->maxSurface1D = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxSurface2D"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxSurface2D [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxSurface3D"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxSurface3D [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxSurface1DLayered"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxSurface1DLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxSurface2DLayered"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->maxSurface2DLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("maxSurfaceCubemap"));
    ans->maxSurfaceCubemap = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxSurfaceCubemapLayered"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->maxSurfaceCubemapLayered [i] = INTEGER ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("surfaceAlignment"));
    ans->surfaceAlignment = asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("concurrentKernels"));
    ans->concurrentKernels = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("ECCEnabled"));
    ans->ECCEnabled = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("pciBusID"));
    ans->pciBusID = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("pciDeviceID"));
    ans->pciDeviceID = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("pciDomainID"));
    ans->pciDomainID = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("tccDriver"));
    ans->tccDriver = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("asyncEngineCount"));
    ans->asyncEngineCount = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("unifiedAddressing"));
    ans->unifiedAddressing = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("memoryClockRate"));
    ans->memoryClockRate = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("memoryBusWidth"));
    ans->memoryBusWidth = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("l2CacheSize"));
    ans->l2CacheSize = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("maxThreadsPerMultiProcessor"));
    ans->maxThreadsPerMultiProcessor = asInteger( tmp );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_cudaDeviceProp_cudaDevicePropPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_cudaDeviceProp_cudaDevicePropPtr (r_from, NULL), "cudaDevicePropPtr" , "cudaDevicePropPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_cudaDevicePropPtr_cudaDeviceProp ( SEXP from )
{
    struct  cudaDeviceProp * ans ;
    ans = (struct  cudaDeviceProp *  ) R_getNativeReference(from, "cudaDeviceProp", NULL);
    return( R_copyStruct_cudaDeviceProp ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_cudaDeviceProp ()
{
    SEXP r_ans = R_NilValue;
    struct  cudaDeviceProp   * ans;
    
    ans = ( struct  cudaDeviceProp   *) calloc (1, sizeof( struct  cudaDeviceProp   ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "cudaDevicePropPtr" , "cudaDevicePropPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_cudaDevicePropPtr_finalizer (SEXP val)
{
    struct  cudaDeviceProp   * ans = NULL;
    ans = ( struct  cudaDeviceProp   * ) R_ExternalPtrAddr(val);
     if(ans) {
    #ifdef DEBUG_R_FINALIZERS
       fprintf(stderr, "freeing cudaDeviceProp  %p\n", ans);
    #endif
        free(ans);
    }
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_cudaDevicePropPtr (SEXP val)
{
    struct  cudaDeviceProp   * ans = NULL;
    ans =  (struct  cudaDeviceProp *  ) R_getNativeReference(val, "cudaDevicePropPtr", NULL) ;
    
     if(ans) {
    #ifdef DEBUG_R_FINALIZERS
       fprintf(stderr, "freeing cudaDeviceProp  %p\n", ans);
    #endif
        free(ans);
    }
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_cudaDeviceProp (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  cudaDeviceProp * value ;
    struct  cudaDeviceProp * ans ;
    SEXP r_ans;
    
    value = (struct  cudaDeviceProp *  ) R_getNativeReference(r_value, "cudaDevicePropPtr", NULL) ;
    ans = ( struct  cudaDeviceProp    *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "cudaDevicePropPtr" , "cudaDevicePropPtr" ) ;
    return(r_ans);
} 
