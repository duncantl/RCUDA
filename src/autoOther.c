// Generated programmatically at 2013-07-02 14:07:42 
#include "RCUDA.h"


SEXP
R_auto_cuArrayCreate(SEXP r_pAllocateArray)
{
    SEXP r_ans = R_NilValue;
    CUarray pHandle;
    const CUDA_ARRAY_DESCRIPTOR * pAllocateArray = GET_REF(r_pAllocateArray, const CUDA_ARRAY_DESCRIPTOR );
    CUresult ans;
    ans = cuArrayCreate(& pHandle,  pAllocateArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pHandle, "CUarray") ;
    return(r_ans);
}


SEXP
R_auto_cuArrayGetDescriptor(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUDA_ARRAY_DESCRIPTOR pArrayDescriptor;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    CUresult ans;
    ans = cuArrayGetDescriptor(& pArrayDescriptor,  hArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_copyStruct_CUDA_ARRAY_DESCRIPTOR_st(&pArrayDescriptor) ;
    return(r_ans);
}


SEXP R_auto_cuArrayDestroy(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    
    CUresult ans;
    ans = cuArrayDestroy(hArray);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cuArray3DCreate(SEXP r_pAllocateArray)
{
    SEXP r_ans = R_NilValue;
    CUarray pHandle;
    const CUDA_ARRAY3D_DESCRIPTOR * pAllocateArray = GET_REF(r_pAllocateArray, const CUDA_ARRAY3D_DESCRIPTOR );
    CUresult ans;
    ans = cuArray3DCreate(& pHandle,  pAllocateArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pHandle, "CUarray") ;
    return(r_ans);
}


SEXP
R_auto_cuArray3DGetDescriptor(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUDA_ARRAY3D_DESCRIPTOR pArrayDescriptor;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    CUresult ans;
    ans = cuArray3DGetDescriptor(& pArrayDescriptor,  hArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_copyStruct_CUDA_ARRAY3D_DESCRIPTOR_st(&pArrayDescriptor) ;
    return(r_ans);
}


SEXP R_auto_cuPointerGetAttribute(SEXP r_data, SEXP r_attribute, SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * data = GET_REF(r_data, void );
    CUpointer_attribute attribute = (CUpointer_attribute) INTEGER(r_attribute)[0];
    CUdeviceptr ptr = REAL(r_ptr)[0];
    
    CUresult ans;
    ans = cuPointerGetAttribute(data, attribute, ptr);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cuGraphicsUnregisterResource(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    
    CUresult ans;
    ans = cuGraphicsUnregisterResource(resource);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cuGraphicsSubResourceGetMappedArray(SEXP r_resource, SEXP r_arrayIndex, SEXP r_mipLevel)
{
    SEXP r_ans = R_NilValue;
    CUarray pArray;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    unsigned int arrayIndex = REAL(r_arrayIndex)[0];
    unsigned int mipLevel = REAL(r_mipLevel)[0];
    CUresult ans;
    ans = cuGraphicsSubResourceGetMappedArray(& pArray,  resource,  arrayIndex,  mipLevel);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pArray, "CUarray") ;
    return(r_ans);
}


SEXP
R_auto_cuGraphicsResourceGetMappedPointer(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr pDevPtr;
    size_t pSize;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    CUresult ans;
    ans = cuGraphicsResourceGetMappedPointer(& pDevPtr, & pSize,  resource);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef((void*) pDevPtr, "CUdeviceptr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(pSize));
    SET_STRING_ELT(r_names, 0, mkChar("pDevPtr"));
    SET_STRING_ELT(r_names, 1, mkChar("pSize"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_auto_cuGraphicsResourceSetMapFlags(SEXP r_resource, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuGraphicsResourceSetMapFlags(resource, flags);
    
    r_ans = Renum_convert_CUresult(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cuGraphicsMapResources(SEXP r_count, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resources;
    unsigned int count = REAL(r_count)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUresult ans;
    ans = cuGraphicsMapResources( count, & resources,  hStream);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(resources, "CUgraphicsResource") ;
    return(r_ans);
}


SEXP
R_auto_cuGraphicsUnmapResources(SEXP r_count, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resources;
    unsigned int count = REAL(r_count)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    CUresult ans;
    ans = cuGraphicsUnmapResources( count, & resources,  hStream);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(resources, "CUgraphicsResource") ;
    return(r_ans);
}


SEXP R_auto_cudaPeekAtLastError()
{
    SEXP r_ans = R_NilValue;
    
    cudaError_t ans;
    ans = cudaPeekAtLastError();
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaChooseDevice(SEXP r_prop)
{
    SEXP r_ans = R_NilValue;
    int device;
    const struct cudaDeviceProp * prop = GET_REF(r_prop, const struct cudaDeviceProp );
    cudaError_t ans;
    ans = cudaChooseDevice(& device,  prop);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(device) ;
    return(r_ans);
}


SEXP
R_auto_cudaGetDevice()
{
    SEXP r_ans = R_NilValue;
    int device;
    cudaError_t ans;
    ans = cudaGetDevice(& device);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(device) ;
    return(r_ans);
}


SEXP R_auto_cudaSetValidDevices(SEXP r_device_arr, SEXP r_len)
{
    SEXP r_ans = R_NilValue;
    int * device_arr = INTEGER(r_device_arr);
    int len = INTEGER(r_len)[0];
    
    cudaError_t ans;
    ans = cudaSetValidDevices(device_arr, len);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaSetDeviceFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaSetDeviceFlags(flags);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaStreamCreate()
{
    SEXP r_ans = R_NilValue;
    cudaStream_t pStream;
    cudaError_t ans;
    ans = cudaStreamCreate(& pStream);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pStream, "cudaStream_t") ;
    return(r_ans);
}


SEXP
R_auto_cudaStreamCreateWithFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t pStream;
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaStreamCreateWithFlags(& pStream,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pStream, "cudaStream_t") ;
    return(r_ans);
}


SEXP R_auto_cudaStreamDestroy(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamDestroy(stream);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaStreamWaitEvent(SEXP r_stream, SEXP r_event, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaStreamWaitEvent(stream, event, flags);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaStreamAddCallback(SEXP r_stream, SEXP r_callback, SEXP r_userData, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaStreamCallback_t callback = (cudaStreamCallback_t) getRReference(r_callback);
    void * userData = GET_REF(r_userData, void );
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaStreamAddCallback(stream, callback, userData, flags);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaStreamSynchronize(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamSynchronize(stream);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaStreamQuery(SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaStreamQuery(stream);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaEventCreate()
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event;
    cudaError_t ans;
    ans = cudaEventCreate(& event);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(event, "cudaEvent_t") ;
    return(r_ans);
}


SEXP
R_auto_cudaEventCreateWithFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event;
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaEventCreateWithFlags(& event,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(event, "cudaEvent_t") ;
    return(r_ans);
}


SEXP R_auto_cudaEventRecord(SEXP r_event, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaEventRecord(event, stream);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaEventQuery(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventQuery(event);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaEventSynchronize(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventSynchronize(event);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaEventDestroy(SEXP r_event)
{
    SEXP r_ans = R_NilValue;
    cudaEvent_t event = (cudaEvent_t) getRReference(r_event);
    
    cudaError_t ans;
    ans = cudaEventDestroy(event);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaEventElapsedTime(SEXP r_start, SEXP r_end)
{
    SEXP r_ans = R_NilValue;
    float ms;
    cudaEvent_t start = (cudaEvent_t) getRReference(r_start);
    cudaEvent_t end = (cudaEvent_t) getRReference(r_end);
    cudaError_t ans;
    ans = cudaEventElapsedTime(& ms,  start,  end);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(ms) ;
    return(r_ans);
}


SEXP R_auto_cudaFuncSetCacheConfig(SEXP r_func, SEXP r_cacheConfig)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    enum cudaFuncCache cacheConfig = (enum cudaFuncCache) INTEGER(r_cacheConfig)[0];
    
    cudaError_t ans;
    ans = cudaFuncSetCacheConfig(func, cacheConfig);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaFuncSetSharedMemConfig(SEXP r_func, SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    enum cudaSharedMemConfig config = (enum cudaSharedMemConfig) INTEGER(r_config)[0];
    
    cudaError_t ans;
    ans = cudaFuncSetSharedMemConfig(func, config);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaLaunch(SEXP r_func)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    
    cudaError_t ans;
    ans = cudaLaunch(func);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaFuncGetAttributes(SEXP r_func)
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


SEXP
R_auto_cudaSetDoubleForDevice()
{
    SEXP r_ans = R_NilValue;
    double d;
    cudaError_t ans;
    ans = cudaSetDoubleForDevice(& d);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(d) ;
    return(r_ans);
}


SEXP
R_auto_cudaSetDoubleForHost()
{
    SEXP r_ans = R_NilValue;
    double d;
    cudaError_t ans;
    ans = cudaSetDoubleForHost(& d);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(d) ;
    return(r_ans);
}


SEXP
R_auto_cudaMallocHost(SEXP r_size)
{
    SEXP r_ans = R_NilValue;
    void * ptr;
    size_t size = REAL(r_size)[0];
    cudaError_t ans;
    ans = cudaMallocHost(& ptr,  size);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(ptr, "voidPtr") ;
    return(r_ans);
}


SEXP
R_auto_cudaMallocPitch(SEXP r_width, SEXP r_height)
{
    SEXP r_ans = R_NilValue;
    void * devPtr;
    size_t pitch;
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    cudaError_t ans;
    ans = cudaMallocPitch(& devPtr, & pitch,  width,  height);
    if(ans)
       return(R_cudaError_t_Info(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef(devPtr, "voidPtr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(pitch));
    SET_STRING_ELT(r_names, 0, mkChar("devPtr"));
    SET_STRING_ELT(r_names, 1, mkChar("pitch"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_auto_cudaMallocArray(SEXP r_desc, SEXP r_width, SEXP r_height, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t array;
    const struct cudaChannelFormatDesc * desc = GET_REF(r_desc, const struct cudaChannelFormatDesc );
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaMallocArray(& array,  desc,  width,  height,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(array, "cudaArray_t") ;
    return(r_ans);
}


SEXP R_auto_cudaFreeHost(SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    
    cudaError_t ans;
    ans = cudaFreeHost(ptr);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaFreeArray(SEXP r_array)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t array = (cudaArray_t) getRReference(r_array);
    
    cudaError_t ans;
    ans = cudaFreeArray(array);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaHostAlloc(SEXP r_size, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    void * pHost;
    size_t size = REAL(r_size)[0];
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaHostAlloc(& pHost,  size,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pHost, "voidPtr") ;
    return(r_ans);
}


SEXP R_auto_cudaHostRegister(SEXP r_ptr, SEXP r_size, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    size_t size = REAL(r_size)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaHostRegister(ptr, size, flags);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaHostUnregister(SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    
    cudaError_t ans;
    ans = cudaHostUnregister(ptr);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaHostGetDevicePointer(SEXP r_pHost, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    void * pDevice;
    void * pHost = GET_REF(r_pHost, void );
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaHostGetDevicePointer(& pDevice,  pHost,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(pDevice, "voidPtr") ;
    return(r_ans);
}


SEXP
R_auto_cudaHostGetFlags(SEXP r_pHost)
{
    SEXP r_ans = R_NilValue;
    unsigned int pFlags;
    void * pHost = GET_REF(r_pHost, void );
    cudaError_t ans;
    ans = cudaHostGetFlags(& pFlags,  pHost);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(pFlags) ;
    return(r_ans);
}


SEXP
R_auto_cudaArrayGetInfo(SEXP r_array)
{
    SEXP r_ans = R_NilValue;
    struct cudaChannelFormatDesc desc;
    struct cudaExtent extent;
    unsigned int flags;
    cudaArray_t array = (cudaArray_t) getRReference(r_array);
    cudaError_t ans;
    ans = cudaArrayGetInfo(& desc, & extent, & flags,  array);
    if(ans)
       return(R_cudaError_t_Info(ans));
    PROTECT(r_ans = NEW_LIST(3));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(3));
    {
    struct cudaChannelFormatDesc * _tmp = (struct cudaChannelFormatDesc *) malloc( sizeof( struct cudaChannelFormatDesc ));
    *_tmp = desc;
    SET_VECTOR_ELT(r_ans, 0, R_createRef(_tmp, "cudaChannelFormatDesc"));
    }
    {
    struct cudaExtent * _tmp = (struct cudaExtent *) malloc( sizeof( struct cudaExtent ));
    *_tmp = extent;
    SET_VECTOR_ELT(r_ans, 1, R_createRef(_tmp, "cudaExtent"));
    }
    SET_VECTOR_ELT(r_ans, 2, ScalarReal(flags));
    SET_STRING_ELT(r_names, 0, mkChar("desc"));
    SET_STRING_ELT(r_names, 1, mkChar("extent"));
    SET_STRING_ELT(r_names, 2, mkChar("flags"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_auto_cudaGetSymbolAddress(SEXP r_symbol)
{
    SEXP r_ans = R_NilValue;
    void * devPtr;
    const void * symbol = GET_REF(r_symbol, const void );
    cudaError_t ans;
    ans = cudaGetSymbolAddress(& devPtr,  symbol);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(devPtr, "voidPtr") ;
    return(r_ans);
}


SEXP
R_auto_cudaGetSymbolSize(SEXP r_symbol)
{
    SEXP r_ans = R_NilValue;
    size_t size;
    const void * symbol = GET_REF(r_symbol, const void );
    cudaError_t ans;
    ans = cudaGetSymbolSize(& size,  symbol);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(size) ;
    return(r_ans);
}


SEXP
R_auto_cudaPointerGetAttributes(SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    struct cudaPointerAttributes attributes;
    const void * ptr = GET_REF(r_ptr, const void );
    cudaError_t ans;
    ans = cudaPointerGetAttributes(& attributes,  ptr);
    if(ans)
       return(R_cudaError_t_Info(ans));
    struct cudaPointerAttributes * _tmp = (struct cudaPointerAttributes *) malloc( sizeof( struct cudaPointerAttributes ));
    *_tmp = attributes;
    r_ans = R_createRef(_tmp, "cudaPointerAttributes");
    return(r_ans);
}


SEXP R_auto_cudaGraphicsUnregisterResource(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    
    cudaError_t ans;
    ans = cudaGraphicsUnregisterResource(resource);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP R_auto_cudaGraphicsResourceSetMapFlags(SEXP r_resource, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaGraphicsResourceSetMapFlags(resource, flags);
    
    r_ans = Renum_convert_cudaError_t(ans) ;
    
    return(r_ans);
}


SEXP
R_auto_cudaGraphicsMapResources(SEXP r_count, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resources;
    int count = INTEGER(r_count)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaError_t ans;
    ans = cudaGraphicsMapResources( count, & resources,  stream);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(resources, "cudaGraphicsResource_t") ;
    return(r_ans);
}


SEXP
R_auto_cudaGraphicsUnmapResources(SEXP r_count, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resources;
    int count = INTEGER(r_count)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaError_t ans;
    ans = cudaGraphicsUnmapResources( count, & resources,  stream);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(resources, "cudaGraphicsResource_t") ;
    return(r_ans);
}


SEXP
R_auto_cudaGraphicsResourceGetMappedPointer(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    void * devPtr;
    size_t size;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    cudaError_t ans;
    ans = cudaGraphicsResourceGetMappedPointer(& devPtr, & size,  resource);
    if(ans)
       return(R_cudaError_t_Info(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef(devPtr, "voidPtr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(size));
    SET_STRING_ELT(r_names, 0, mkChar("devPtr"));
    SET_STRING_ELT(r_names, 1, mkChar("size"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_auto_cudaGraphicsSubResourceGetMappedArray(SEXP r_resource, SEXP r_arrayIndex, SEXP r_mipLevel)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t array;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    unsigned int arrayIndex = REAL(r_arrayIndex)[0];
    unsigned int mipLevel = REAL(r_mipLevel)[0];
    cudaError_t ans;
    ans = cudaGraphicsSubResourceGetMappedArray(& array,  resource,  arrayIndex,  mipLevel);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(array, "cudaArray_t") ;
    return(r_ans);
}


SEXP
R_auto_cudaGetChannelDesc(SEXP r_array)
{
    SEXP r_ans = R_NilValue;
    struct cudaChannelFormatDesc desc;
    cudaArray_const_t array = (cudaArray_const_t) getRReference(r_array);
    cudaError_t ans;
    ans = cudaGetChannelDesc(& desc,  array);
    if(ans)
       return(R_cudaError_t_Info(ans));
    struct cudaChannelFormatDesc * _tmp = (struct cudaChannelFormatDesc *) malloc( sizeof( struct cudaChannelFormatDesc ));
    *_tmp = desc;
    r_ans = R_createRef(_tmp, "cudaChannelFormatDesc");
    return(r_ans);
}


SEXP R_auto_cudaCreateChannelDesc(SEXP r_x, SEXP r_y, SEXP r_z, SEXP r_w, SEXP r_f)
{
    SEXP r_ans = R_NilValue;
    int x = INTEGER(r_x)[0];
    int y = INTEGER(r_y)[0];
    int z = INTEGER(r_z)[0];
    int w = INTEGER(r_w)[0];
    enum cudaChannelFormatKind f = (enum cudaChannelFormatKind) INTEGER(r_f)[0];
    
    struct cudaChannelFormatDesc ans;
    ans = cudaCreateChannelDesc(x, y, z, w, f);
    
    struct cudaChannelFormatDesc * _tmp = (struct cudaChannelFormatDesc *) malloc( sizeof( struct cudaChannelFormatDesc ));
    *_tmp = ans;
    r_ans = R_createRef(_tmp, "cudaChannelFormatDesc");
    
    return(r_ans);
}
