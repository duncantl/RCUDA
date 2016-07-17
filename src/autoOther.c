// Generated programmatically at 2016-07-17 12:39:47 
#include "RCUDA.h"


SEXP
R_cuGetErrorString(SEXP r_error)
{
    SEXP r_ans = R_NilValue;
    const char * pStr;
    CUresult error = (CUresult) INTEGER(r_error)[0];
    CUresult ans;
    ans = cuGetErrorString( error, & pStr);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = mkString(pStr) ;
    return(r_ans);
}


SEXP
R_cuGetErrorName(SEXP r_error)
{
    SEXP r_ans = R_NilValue;
    const char * pStr;
    CUresult error = (CUresult) INTEGER(r_error)[0];
    CUresult ans;
    ans = cuGetErrorName( error, & pStr);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = mkString(pStr) ;
    return(r_ans);
}


SEXP
R_cuLinkCreate_v2(SEXP r_numOptions)
{
    SEXP r_ans = R_NilValue;
    CUjit_option options;
    void * optionValues;
    CUlinkState stateOut;
    unsigned int numOptions = REAL(r_numOptions)[0];
    CUresult ans;
    ans = cuLinkCreate_v2( numOptions, & options, & optionValues, & stateOut);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(3));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(3));
    SET_VECTOR_ELT(r_ans, 0, Renum_convert_CUjit_option_enum(options));
    SET_VECTOR_ELT(r_ans, 1, R_createRef(optionValues, "voidPtr"));
    SET_VECTOR_ELT(r_ans, 2, R_createRef(stateOut, "CUlinkState"));
    SET_STRING_ELT(r_names, 0, mkChar("options"));
    SET_STRING_ELT(r_names, 1, mkChar("optionValues"));
    SET_STRING_ELT(r_names, 2, mkChar("stateOut"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuLinkAddData_v2(SEXP r_state, SEXP r_type, SEXP r_data, SEXP r_size, SEXP r_name, SEXP r_numOptions)
{
    SEXP r_ans = R_NilValue;
    CUjit_option options;
    void * optionValues;
    CUlinkState state = (CUlinkState) getRReference(r_state);
    CUjitInputType type = (CUjitInputType) INTEGER(r_type)[0];
    void * data = GET_REF(r_data, void );
    size_t size = REAL(r_size)[0];
    const char * name = CHAR(STRING_ELT(r_name, 0));
    unsigned int numOptions = REAL(r_numOptions)[0];
    CUresult ans;
    ans = cuLinkAddData_v2( state,  type,  data,  size,  name,  numOptions, & options, & optionValues);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, Renum_convert_CUjit_option_enum(options));
    SET_VECTOR_ELT(r_ans, 1, R_createRef(optionValues, "voidPtr"));
    SET_STRING_ELT(r_names, 0, mkChar("options"));
    SET_STRING_ELT(r_names, 1, mkChar("optionValues"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuLinkAddFile_v2(SEXP r_state, SEXP r_type, SEXP r_path, SEXP r_numOptions)
{
    SEXP r_ans = R_NilValue;
    CUjit_option options;
    void * optionValues;
    CUlinkState state = (CUlinkState) getRReference(r_state);
    CUjitInputType type = (CUjitInputType) INTEGER(r_type)[0];
    const char * path = CHAR(STRING_ELT(r_path, 0));
    unsigned int numOptions = REAL(r_numOptions)[0];
    CUresult ans;
    ans = cuLinkAddFile_v2( state,  type,  path,  numOptions, & options, & optionValues);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, Renum_convert_CUjit_option_enum(options));
    SET_VECTOR_ELT(r_ans, 1, R_createRef(optionValues, "voidPtr"));
    SET_STRING_ELT(r_names, 0, mkChar("options"));
    SET_STRING_ELT(r_names, 1, mkChar("optionValues"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuLinkComplete(SEXP r_state)
{
    SEXP r_ans = R_NilValue;
    void * cubinOut;
    size_t sizeOut;
    CUlinkState state = (CUlinkState) getRReference(r_state);
    CUresult ans;
    ans = cuLinkComplete( state, & cubinOut, & sizeOut);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef(cubinOut, "voidPtr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(sizeOut));
    SET_STRING_ELT(r_names, 0, mkChar("cubinOut"));
    SET_STRING_ELT(r_names, 1, mkChar("sizeOut"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cuLinkDestroy(SEXP r_state)
{
    SEXP r_ans = R_NilValue;
    CUlinkState state = (CUlinkState) getRReference(r_state);
    
    CUresult ans;
    ans = cuLinkDestroy(state);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy(SEXP r_dst, SEXP r_src, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dst = REAL(r_dst)[0];
    CUdeviceptr src = REAL(r_src)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpy(dst, src, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuArrayCreate_v2(SEXP r_pAllocateArray)
{
    SEXP r_ans = R_NilValue;
    CUarray pHandle;
    const CUDA_ARRAY_DESCRIPTOR * pAllocateArray = GET_REF(r_pAllocateArray, const CUDA_ARRAY_DESCRIPTOR );
    CUresult ans;
    ans = cuArrayCreate_v2(& pHandle,  pAllocateArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pHandle, "CUarray") ;
    return(r_ans);
}


SEXP
R_cuArrayGetDescriptor_v2(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUDA_ARRAY_DESCRIPTOR pArrayDescriptor;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    CUresult ans;
    ans = cuArrayGetDescriptor_v2(& pArrayDescriptor,  hArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_copyStruct_CUDA_ARRAY_DESCRIPTOR_st(&pArrayDescriptor) ;
    return(r_ans);
}


SEXP R_cuArrayDestroy(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    
    CUresult ans;
    ans = cuArrayDestroy(hArray);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuArray3DCreate_v2(SEXP r_pAllocateArray)
{
    SEXP r_ans = R_NilValue;
    CUarray pHandle;
    const CUDA_ARRAY3D_DESCRIPTOR * pAllocateArray = GET_REF(r_pAllocateArray, const CUDA_ARRAY3D_DESCRIPTOR );
    CUresult ans;
    ans = cuArray3DCreate_v2(& pHandle,  pAllocateArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pHandle, "CUarray") ;
    return(r_ans);
}


SEXP
R_cuArray3DGetDescriptor_v2(SEXP r_hArray)
{
    SEXP r_ans = R_NilValue;
    CUDA_ARRAY3D_DESCRIPTOR pArrayDescriptor;
    CUarray hArray = (CUarray) getRReference(r_hArray);
    CUresult ans;
    ans = cuArray3DGetDescriptor_v2(& pArrayDescriptor,  hArray);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_copyStruct_CUDA_ARRAY3D_DESCRIPTOR_st(&pArrayDescriptor) ;
    return(r_ans);
}


SEXP R_cuPointerGetAttribute(SEXP r_data, SEXP r_attribute, SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * data = GET_REF(r_data, void );
    CUpointer_attribute attribute = (CUpointer_attribute) INTEGER(r_attribute)[0];
    CUdeviceptr ptr = REAL(r_ptr)[0];
    
    CUresult ans;
    ans = cuPointerGetAttribute(data, attribute, ptr);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuPointerSetAttribute(SEXP r_value, SEXP r_attribute, SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    const void * value = GET_REF(r_value, const void );
    CUpointer_attribute attribute = (CUpointer_attribute) INTEGER(r_attribute)[0];
    CUdeviceptr ptr = REAL(r_ptr)[0];
    
    CUresult ans;
    ans = cuPointerSetAttribute(value, attribute, ptr);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuPointerGetAttributes(SEXP r_numAttributes, SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    CUpointer_attribute attributes;
    void * data;
    unsigned int numAttributes = REAL(r_numAttributes)[0];
    CUdeviceptr ptr = REAL(r_ptr)[0];
    CUresult ans;
    ans = cuPointerGetAttributes( numAttributes, & attributes, & data,  ptr);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, Renum_convert_CUpointer_attribute_enum(attributes));
    SET_VECTOR_ELT(r_ans, 1, R_createRef(data, "voidPtr"));
    SET_STRING_ELT(r_names, 0, mkChar("attributes"));
    SET_STRING_ELT(r_names, 1, mkChar("data"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuOccupancyMaxActiveBlocksPerMultiprocessor(SEXP r_func, SEXP r_blockSize, SEXP r_dynamicSMemSize)
{
    SEXP r_ans = R_NilValue;
    int numBlocks;
    CUfunction func = (CUfunction) getRReference(r_func);
    int blockSize = INTEGER(r_blockSize)[0];
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    CUresult ans;
    ans = cuOccupancyMaxActiveBlocksPerMultiprocessor(& numBlocks,  func,  blockSize,  dynamicSMemSize);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(numBlocks) ;
    return(r_ans);
}


SEXP
R_cuOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(SEXP r_func, SEXP r_blockSize, SEXP r_dynamicSMemSize, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    int numBlocks;
    CUfunction func = (CUfunction) getRReference(r_func);
    int blockSize = INTEGER(r_blockSize)[0];
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    unsigned int flags = REAL(r_flags)[0];
    CUresult ans;
    ans = cuOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(& numBlocks,  func,  blockSize,  dynamicSMemSize,  flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(numBlocks) ;
    return(r_ans);
}


SEXP
R_cuOccupancyMaxPotentialBlockSize(SEXP r_func, SEXP r_blockSizeToDynamicSMemSize, SEXP r_dynamicSMemSize, SEXP r_blockSizeLimit)
{
    SEXP r_ans = R_NilValue;
    int minGridSize;
    int blockSize;
    CUfunction func = (CUfunction) getRReference(r_func);
    CUoccupancyB2DSize blockSizeToDynamicSMemSize = (CUoccupancyB2DSize) getRReference(r_blockSizeToDynamicSMemSize);
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    int blockSizeLimit = INTEGER(r_blockSizeLimit)[0];
    CUresult ans;
    ans = cuOccupancyMaxPotentialBlockSize(& minGridSize, & blockSize,  func,  blockSizeToDynamicSMemSize,  dynamicSMemSize,  blockSizeLimit);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarInteger(minGridSize));
    SET_VECTOR_ELT(r_ans, 1, ScalarInteger(blockSize));
    SET_STRING_ELT(r_names, 0, mkChar("minGridSize"));
    SET_STRING_ELT(r_names, 1, mkChar("blockSize"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuOccupancyMaxPotentialBlockSizeWithFlags(SEXP r_func, SEXP r_blockSizeToDynamicSMemSize, SEXP r_dynamicSMemSize, SEXP r_blockSizeLimit, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    int minGridSize;
    int blockSize;
    CUfunction func = (CUfunction) getRReference(r_func);
    CUoccupancyB2DSize blockSizeToDynamicSMemSize = (CUoccupancyB2DSize) getRReference(r_blockSizeToDynamicSMemSize);
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    int blockSizeLimit = INTEGER(r_blockSizeLimit)[0];
    unsigned int flags = REAL(r_flags)[0];
    CUresult ans;
    ans = cuOccupancyMaxPotentialBlockSizeWithFlags(& minGridSize, & blockSize,  func,  blockSizeToDynamicSMemSize,  dynamicSMemSize,  blockSizeLimit,  flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarInteger(minGridSize));
    SET_VECTOR_ELT(r_ans, 1, ScalarInteger(blockSize));
    SET_STRING_ELT(r_names, 0, mkChar("minGridSize"));
    SET_STRING_ELT(r_names, 1, mkChar("blockSize"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cuGraphicsUnregisterResource(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    
    CUresult ans;
    ans = cuGraphicsUnregisterResource(resource);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuGraphicsSubResourceGetMappedArray(SEXP r_resource, SEXP r_arrayIndex, SEXP r_mipLevel)
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
R_cuGraphicsResourceGetMappedPointer_v2(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr pDevPtr;
    size_t pSize;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    CUresult ans;
    ans = cuGraphicsResourceGetMappedPointer_v2(& pDevPtr, & pSize,  resource);
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


SEXP R_cuGraphicsResourceSetMapFlags_v2(SEXP r_resource, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUgraphicsResource resource = (CUgraphicsResource) getRReference(r_resource);
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuGraphicsResourceSetMapFlags_v2(resource, flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuGraphicsMapResources(SEXP r_count, SEXP r_hStream)
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
R_cuGraphicsUnmapResources(SEXP r_count, SEXP r_hStream)
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


SEXP R_cudaPeekAtLastError()
{
    SEXP r_ans = R_NilValue;
    
    cudaError_t ans;
    ans = cudaPeekAtLastError();
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaGetErrorName(SEXP r_error)
{
    SEXP r_ans = R_NilValue;
    cudaError_t error = (cudaError_t) INTEGER(r_error)[0];
    
    const char * ans;
    ans = cudaGetErrorName(error);
    
    r_ans = mkString(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaChooseDevice(SEXP r_prop)
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
R_cudaGetDevice()
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


SEXP R_cudaSetValidDevices(SEXP r_device_arr, SEXP r_len)
{
    SEXP r_ans = R_NilValue;
    int * device_arr = INTEGER(r_device_arr);
    int len = INTEGER(r_len)[0];
    
    cudaError_t ans;
    ans = cudaSetValidDevices(device_arr, len);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaSetDeviceFlags(SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaSetDeviceFlags(flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaGetDeviceFlags()
{
    SEXP r_ans = R_NilValue;
    unsigned int flags;
    cudaError_t ans;
    ans = cudaGetDeviceFlags(& flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(flags) ;
    return(r_ans);
}


SEXP
R_cudaLaunchKernel(SEXP r_func, SEXP r_gridDim, SEXP r_blockDim, SEXP r_sharedMem, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * args;
    const void * func = GET_REF(r_func, const void );
    dim3 gridDim = * GET_REF(r_gridDim, dim3);
    dim3 blockDim = * GET_REF(r_blockDim, dim3);
    size_t sharedMem = REAL(r_sharedMem)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    cudaError_t ans;
    ans = cudaLaunchKernel( func,  gridDim,  blockDim, & args,  sharedMem,  stream);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(args, "voidPtr") ;
    return(r_ans);
}


SEXP
R_cudaSetDoubleForDevice()
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
R_cudaSetDoubleForHost()
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
R_cudaOccupancyMaxActiveBlocksPerMultiprocessor(SEXP r_func, SEXP r_blockSize, SEXP r_dynamicSMemSize)
{
    SEXP r_ans = R_NilValue;
    int numBlocks;
    const void * func = GET_REF(r_func, const void );
    int blockSize = INTEGER(r_blockSize)[0];
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    cudaError_t ans;
    ans = cudaOccupancyMaxActiveBlocksPerMultiprocessor(& numBlocks,  func,  blockSize,  dynamicSMemSize);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(numBlocks) ;
    return(r_ans);
}


SEXP
R_cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(SEXP r_func, SEXP r_blockSize, SEXP r_dynamicSMemSize, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    int numBlocks;
    const void * func = GET_REF(r_func, const void );
    int blockSize = INTEGER(r_blockSize)[0];
    size_t dynamicSMemSize = REAL(r_dynamicSMemSize)[0];
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(& numBlocks,  func,  blockSize,  dynamicSMemSize,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(numBlocks) ;
    return(r_ans);
}


SEXP R_cudaLaunch(SEXP r_func)
{
    SEXP r_ans = R_NilValue;
    const void * func = GET_REF(r_func, const void );
    
    cudaError_t ans;
    ans = cudaLaunch(func);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaMallocManaged(SEXP r_size, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    void * devPtr;
    size_t size = REAL(r_size)[0];
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaMallocManaged(& devPtr,  size,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(devPtr, "voidPtr") ;
    return(r_ans);
}


SEXP
R_cudaMallocHost(SEXP r_size)
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
R_cudaMallocPitch(SEXP r_width, SEXP r_height)
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
R_cudaMallocArray(SEXP r_desc, SEXP r_width, SEXP r_height, SEXP r_flags)
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


SEXP R_cudaFreeHost(SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    
    cudaError_t ans;
    ans = cudaFreeHost(ptr);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaFreeArray(SEXP r_array)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t array = (cudaArray_t) getRReference(r_array);
    
    cudaError_t ans;
    ans = cudaFreeArray(array);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaHostAlloc(SEXP r_size, SEXP r_flags)
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


SEXP R_cudaHostRegister(SEXP r_ptr, SEXP r_size, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    size_t size = REAL(r_size)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaHostRegister(ptr, size, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaHostUnregister(SEXP r_ptr)
{
    SEXP r_ans = R_NilValue;
    void * ptr = GET_REF(r_ptr, void );
    
    cudaError_t ans;
    ans = cudaHostUnregister(ptr);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaHostGetDevicePointer(SEXP r_pHost, SEXP r_flags)
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
R_cudaHostGetFlags(SEXP r_pHost)
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
R_cudaMalloc3D(SEXP r_extent)
{
    SEXP r_ans = R_NilValue;
    struct cudaPitchedPtr pitchedDevPtr;
    struct cudaExtent extent = * (struct cudaExtent *) getRReference(r_extent);
    cudaError_t ans;
    ans = cudaMalloc3D(& pitchedDevPtr,  extent);
    if(ans)
       return(R_cudaError_t_Info(ans));
    struct cudaPitchedPtr * _tmp = (struct cudaPitchedPtr *) malloc( sizeof( struct cudaPitchedPtr ));
    *_tmp = pitchedDevPtr;
    r_ans = R_createRef(_tmp, "cudaPitchedPtr");
    return(r_ans);
}


SEXP
R_cudaMalloc3DArray(SEXP r_desc, SEXP r_extent, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t array;
    const struct cudaChannelFormatDesc * desc = GET_REF(r_desc, const struct cudaChannelFormatDesc );
    struct cudaExtent extent = * (struct cudaExtent *) getRReference(r_extent);
    unsigned int flags = REAL(r_flags)[0];
    cudaError_t ans;
    ans = cudaMalloc3DArray(& array,  desc,  extent,  flags);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = R_createRef(array, "cudaArray_t") ;
    return(r_ans);
}


SEXP
R_cudaMemGetInfo()
{
    SEXP r_ans = R_NilValue;
    size_t free;
    size_t total;
    cudaError_t ans;
    ans = cudaMemGetInfo(& free, & total);
    if(ans)
       return(R_cudaError_t_Info(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarReal(free));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(total));
    SET_STRING_ELT(r_names, 0, mkChar("free"));
    SET_STRING_ELT(r_names, 1, mkChar("total"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cudaArrayGetInfo(SEXP r_array)
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
R_cudaGetSymbolAddress(SEXP r_symbol)
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
R_cudaGetSymbolSize(SEXP r_symbol)
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
R_cudaPointerGetAttributes(SEXP r_ptr)
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


SEXP R_cudaGraphicsUnregisterResource(SEXP r_resource)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    
    cudaError_t ans;
    ans = cudaGraphicsUnregisterResource(resource);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaGraphicsResourceSetMapFlags(SEXP r_resource, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    cudaGraphicsResource_t resource = (cudaGraphicsResource_t) getRReference(r_resource);
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaGraphicsResourceSetMapFlags(resource, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaGraphicsMapResources(SEXP r_count, SEXP r_stream)
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
R_cudaGraphicsUnmapResources(SEXP r_count, SEXP r_stream)
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
R_cudaGraphicsResourceGetMappedPointer(SEXP r_resource)
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
R_cudaGraphicsSubResourceGetMappedArray(SEXP r_resource, SEXP r_arrayIndex, SEXP r_mipLevel)
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
R_cudaGetChannelDesc(SEXP r_array)
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


SEXP R_cudaCreateChannelDesc(SEXP r_x, SEXP r_y, SEXP r_z, SEXP r_w, SEXP r_f)
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
