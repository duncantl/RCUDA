// Generated programmatically at 2016-07-15 18:47:23 
#include "RCUDA.h"


SEXP
R_cuMemGetInfo_v2()
{
    SEXP r_ans = R_NilValue;
    size_t free;
    size_t total;
    CUresult ans;
    ans = cuMemGetInfo_v2(& free, & total);
    if(ans)
       return(R_cudaErrorInfo(ans));
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
R_cuMemAlloc_v2(SEXP r_bytesize)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dptr;
    size_t bytesize = REAL(r_bytesize)[0];
    CUresult ans;
    ans = cuMemAlloc_v2(& dptr,  bytesize);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef((void*) dptr, "CUdeviceptr") ;
    return(r_ans);
}


SEXP
R_cuMemAllocPitch_v2(SEXP r_WidthInBytes, SEXP r_Height, SEXP r_ElementSizeBytes)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dptr;
    size_t pPitch;
    size_t WidthInBytes = REAL(r_WidthInBytes)[0];
    size_t Height = REAL(r_Height)[0];
    unsigned int ElementSizeBytes = REAL(r_ElementSizeBytes)[0];
    CUresult ans;
    ans = cuMemAllocPitch_v2(& dptr, & pPitch,  WidthInBytes,  Height,  ElementSizeBytes);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef((void*) dptr, "CUdeviceptr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(pPitch));
    SET_STRING_ELT(r_names, 0, mkChar("dptr"));
    SET_STRING_ELT(r_names, 1, mkChar("pPitch"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cuMemFree_v2(SEXP r_dptr)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dptr = REAL(r_dptr)[0];
    
    CUresult ans;
    ans = cuMemFree_v2(dptr);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuMemGetAddressRange_v2(SEXP r_dptr)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr pbase;
    size_t psize;
    CUdeviceptr dptr = REAL(r_dptr)[0];
    CUresult ans;
    ans = cuMemGetAddressRange_v2(& pbase, & psize,  dptr);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, R_createRef((void*) pbase, "CUdeviceptr"));
    SET_VECTOR_ELT(r_ans, 1, ScalarReal(psize));
    SET_STRING_ELT(r_names, 0, mkChar("pbase"));
    SET_STRING_ELT(r_names, 1, mkChar("psize"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_cuMemAllocHost_v2(SEXP r_bytesize)
{
    SEXP r_ans = R_NilValue;
    void * pp;
    size_t bytesize = REAL(r_bytesize)[0];
    CUresult ans;
    ans = cuMemAllocHost_v2(& pp,  bytesize);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pp, "voidPtr") ;
    return(r_ans);
}


SEXP R_cuMemFreeHost(SEXP r_p)
{
    SEXP r_ans = R_NilValue;
    void * p = GET_REF(r_p, void );
    
    CUresult ans;
    ans = cuMemFreeHost(p);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuMemHostAlloc(SEXP r_bytesize, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    void * pp;
    size_t bytesize = REAL(r_bytesize)[0];
    unsigned int Flags = REAL(r_Flags)[0];
    CUresult ans;
    ans = cuMemHostAlloc(& pp,  bytesize,  Flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pp, "voidPtr") ;
    return(r_ans);
}


SEXP
R_cuMemHostGetDevicePointer_v2(SEXP r_p, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr pdptr;
    void * p = GET_REF(r_p, void );
    unsigned int Flags = REAL(r_Flags)[0];
    CUresult ans;
    ans = cuMemHostGetDevicePointer_v2(& pdptr,  p,  Flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef((void*) pdptr, "CUdeviceptr") ;
    return(r_ans);
}


SEXP
R_cuMemHostGetFlags(SEXP r_p)
{
    SEXP r_ans = R_NilValue;
    unsigned int pFlags;
    void * p = GET_REF(r_p, void );
    CUresult ans;
    ans = cuMemHostGetFlags(& pFlags,  p);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(pFlags) ;
    return(r_ans);
}


SEXP
R_cuMemAllocManaged(SEXP r_bytesize, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dptr;
    size_t bytesize = REAL(r_bytesize)[0];
    unsigned int flags = REAL(r_flags)[0];
    CUresult ans;
    ans = cuMemAllocManaged(& dptr,  bytesize,  flags);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef((void*) dptr, "CUdeviceptr") ;
    return(r_ans);
}


SEXP R_cuMemHostRegister_v2(SEXP r_p, SEXP r_bytesize, SEXP r_Flags)
{
    SEXP r_ans = R_NilValue;
    void * p = GET_REF(r_p, void );
    size_t bytesize = REAL(r_bytesize)[0];
    unsigned int Flags = REAL(r_Flags)[0];
    
    CUresult ans;
    ans = cuMemHostRegister_v2(p, bytesize, Flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemHostUnregister(SEXP r_p)
{
    SEXP r_ans = R_NilValue;
    void * p = GET_REF(r_p, void );
    
    CUresult ans;
    ans = cuMemHostUnregister(p);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyPeer(SEXP r_dstDevice, SEXP r_dstContext, SEXP r_srcDevice, SEXP r_srcContext, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    CUcontext dstContext = (CUcontext) getRReference(r_dstContext);
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    CUcontext srcContext = (CUcontext) getRReference(r_srcContext);
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyPeer(dstDevice, dstContext, srcDevice, srcContext, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyHtoD_v2(SEXP r_dstDevice, SEXP r_srcHost, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    const void * srcHost = GET_REF(r_srcHost, const void );
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyHtoD_v2(dstDevice, srcHost, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyDtoH_v2(SEXP r_dstHost, SEXP r_srcDevice, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    void * dstHost = GET_REF(r_dstHost, void );
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyDtoH_v2(dstHost, srcDevice, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyDtoD_v2(SEXP r_dstDevice, SEXP r_srcDevice, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyDtoD_v2(dstDevice, srcDevice, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyDtoA_v2(SEXP r_dstArray, SEXP r_dstOffset, SEXP r_srcDevice, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUarray dstArray = (CUarray) getRReference(r_dstArray);
    size_t dstOffset = REAL(r_dstOffset)[0];
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyDtoA_v2(dstArray, dstOffset, srcDevice, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyAtoD_v2(SEXP r_dstDevice, SEXP r_srcArray, SEXP r_srcOffset, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    CUarray srcArray = (CUarray) getRReference(r_srcArray);
    size_t srcOffset = REAL(r_srcOffset)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyAtoD_v2(dstDevice, srcArray, srcOffset, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyHtoA_v2(SEXP r_dstArray, SEXP r_dstOffset, SEXP r_srcHost, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUarray dstArray = (CUarray) getRReference(r_dstArray);
    size_t dstOffset = REAL(r_dstOffset)[0];
    const void * srcHost = GET_REF(r_srcHost, const void );
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyHtoA_v2(dstArray, dstOffset, srcHost, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyAtoH_v2(SEXP r_dstHost, SEXP r_srcArray, SEXP r_srcOffset, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    void * dstHost = GET_REF(r_dstHost, void );
    CUarray srcArray = (CUarray) getRReference(r_srcArray);
    size_t srcOffset = REAL(r_srcOffset)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyAtoH_v2(dstHost, srcArray, srcOffset, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyAtoA_v2(SEXP r_dstArray, SEXP r_dstOffset, SEXP r_srcArray, SEXP r_srcOffset, SEXP r_ByteCount)
{
    SEXP r_ans = R_NilValue;
    CUarray dstArray = (CUarray) getRReference(r_dstArray);
    size_t dstOffset = REAL(r_dstOffset)[0];
    CUarray srcArray = (CUarray) getRReference(r_srcArray);
    size_t srcOffset = REAL(r_srcOffset)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    
    CUresult ans;
    ans = cuMemcpyAtoA_v2(dstArray, dstOffset, srcArray, srcOffset, ByteCount);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy2D_v2(SEXP r_pCopy)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY2D * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY2D );
    
    CUresult ans;
    ans = cuMemcpy2D_v2(pCopy);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy2DUnaligned_v2(SEXP r_pCopy)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY2D * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY2D );
    
    CUresult ans;
    ans = cuMemcpy2DUnaligned_v2(pCopy);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy3D_v2(SEXP r_pCopy)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY3D * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY3D );
    
    CUresult ans;
    ans = cuMemcpy3D_v2(pCopy);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy3DPeer(SEXP r_pCopy)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY3D_PEER * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY3D_PEER );
    
    CUresult ans;
    ans = cuMemcpy3DPeer(pCopy);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyAsync(SEXP r_dst, SEXP r_src, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dst = REAL(r_dst)[0];
    CUdeviceptr src = REAL(r_src)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyAsync(dst, src, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyPeerAsync(SEXP r_dstDevice, SEXP r_dstContext, SEXP r_srcDevice, SEXP r_srcContext, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    CUcontext dstContext = (CUcontext) getRReference(r_dstContext);
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    CUcontext srcContext = (CUcontext) getRReference(r_srcContext);
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyPeerAsync(dstDevice, dstContext, srcDevice, srcContext, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyHtoDAsync_v2(SEXP r_dstDevice, SEXP r_srcHost, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    const void * srcHost = GET_REF(r_srcHost, const void );
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyHtoDAsync_v2(dstDevice, srcHost, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyDtoHAsync_v2(SEXP r_dstHost, SEXP r_srcDevice, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    void * dstHost = GET_REF(r_dstHost, void );
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyDtoHAsync_v2(dstHost, srcDevice, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyDtoDAsync_v2(SEXP r_dstDevice, SEXP r_srcDevice, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    CUdeviceptr srcDevice = REAL(r_srcDevice)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyDtoDAsync_v2(dstDevice, srcDevice, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyHtoAAsync_v2(SEXP r_dstArray, SEXP r_dstOffset, SEXP r_srcHost, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUarray dstArray = (CUarray) getRReference(r_dstArray);
    size_t dstOffset = REAL(r_dstOffset)[0];
    const void * srcHost = GET_REF(r_srcHost, const void );
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyHtoAAsync_v2(dstArray, dstOffset, srcHost, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpyAtoHAsync_v2(SEXP r_dstHost, SEXP r_srcArray, SEXP r_srcOffset, SEXP r_ByteCount, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    void * dstHost = GET_REF(r_dstHost, void );
    CUarray srcArray = (CUarray) getRReference(r_srcArray);
    size_t srcOffset = REAL(r_srcOffset)[0];
    size_t ByteCount = REAL(r_ByteCount)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpyAtoHAsync_v2(dstHost, srcArray, srcOffset, ByteCount, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy2DAsync_v2(SEXP r_pCopy, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY2D * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY2D );
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpy2DAsync_v2(pCopy, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy3DAsync_v2(SEXP r_pCopy, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY3D * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY3D );
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpy3DAsync_v2(pCopy, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemcpy3DPeerAsync(SEXP r_pCopy, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    const CUDA_MEMCPY3D_PEER * pCopy = GET_REF(r_pCopy, const CUDA_MEMCPY3D_PEER );
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemcpy3DPeerAsync(pCopy, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD8_v2(SEXP r_dstDevice, SEXP r_uc, SEXP r_N)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned char uc = (unsigned char) INTEGER(r_uc)[0];
    size_t N = REAL(r_N)[0];
    
    CUresult ans;
    ans = cuMemsetD8_v2(dstDevice, uc, N);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD16_v2(SEXP r_dstDevice, SEXP r_us, SEXP r_N)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned short us = (unsigned short) INTEGER(r_us)[0];
    size_t N = REAL(r_N)[0];
    
    CUresult ans;
    ans = cuMemsetD16_v2(dstDevice, us, N);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD32_v2(SEXP r_dstDevice, SEXP r_ui, SEXP r_N)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned int ui = REAL(r_ui)[0];
    size_t N = REAL(r_N)[0];
    
    CUresult ans;
    ans = cuMemsetD32_v2(dstDevice, ui, N);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D8_v2(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_uc, SEXP r_Width, SEXP r_Height)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned char uc = (unsigned char) INTEGER(r_uc)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    
    CUresult ans;
    ans = cuMemsetD2D8_v2(dstDevice, dstPitch, uc, Width, Height);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D16_v2(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_us, SEXP r_Width, SEXP r_Height)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned short us = (unsigned short) INTEGER(r_us)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    
    CUresult ans;
    ans = cuMemsetD2D16_v2(dstDevice, dstPitch, us, Width, Height);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D32_v2(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_ui, SEXP r_Width, SEXP r_Height)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned int ui = REAL(r_ui)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    
    CUresult ans;
    ans = cuMemsetD2D32_v2(dstDevice, dstPitch, ui, Width, Height);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD8Async(SEXP r_dstDevice, SEXP r_uc, SEXP r_N, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned char uc = (unsigned char) INTEGER(r_uc)[0];
    size_t N = REAL(r_N)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD8Async(dstDevice, uc, N, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD16Async(SEXP r_dstDevice, SEXP r_us, SEXP r_N, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned short us = (unsigned short) INTEGER(r_us)[0];
    size_t N = REAL(r_N)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD16Async(dstDevice, us, N, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD32Async(SEXP r_dstDevice, SEXP r_ui, SEXP r_N, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    unsigned int ui = REAL(r_ui)[0];
    size_t N = REAL(r_N)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD32Async(dstDevice, ui, N, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D8Async(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_uc, SEXP r_Width, SEXP r_Height, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned char uc = (unsigned char) INTEGER(r_uc)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD2D8Async(dstDevice, dstPitch, uc, Width, Height, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D16Async(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_us, SEXP r_Width, SEXP r_Height, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned short us = (unsigned short) INTEGER(r_us)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD2D16Async(dstDevice, dstPitch, us, Width, Height, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuMemsetD2D32Async(SEXP r_dstDevice, SEXP r_dstPitch, SEXP r_ui, SEXP r_Width, SEXP r_Height, SEXP r_hStream)
{
    SEXP r_ans = R_NilValue;
    CUdeviceptr dstDevice = REAL(r_dstDevice)[0];
    size_t dstPitch = REAL(r_dstPitch)[0];
    unsigned int ui = REAL(r_ui)[0];
    size_t Width = REAL(r_Width)[0];
    size_t Height = REAL(r_Height)[0];
    CUstream hStream = (CUstream) getRReference(r_hStream);
    
    CUresult ans;
    ans = cuMemsetD2D32Async(dstDevice, dstPitch, ui, Width, Height, hStream);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy3D(SEXP r_p)
{
    SEXP r_ans = R_NilValue;
    const struct cudaMemcpy3DParms * p = GET_REF(r_p, const struct cudaMemcpy3DParms );
    
    cudaError_t ans;
    ans = cudaMemcpy3D(p);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy3DPeer(SEXP r_p)
{
    SEXP r_ans = R_NilValue;
    const struct cudaMemcpy3DPeerParms * p = GET_REF(r_p, const struct cudaMemcpy3DPeerParms );
    
    cudaError_t ans;
    ans = cudaMemcpy3DPeer(p);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy3DAsync(SEXP r_p, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    const struct cudaMemcpy3DParms * p = GET_REF(r_p, const struct cudaMemcpy3DParms );
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpy3DAsync(p, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy3DPeerAsync(SEXP r_p, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    const struct cudaMemcpy3DPeerParms * p = GET_REF(r_p, const struct cudaMemcpy3DPeerParms );
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpy3DPeerAsync(p, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy(SEXP r_dst, SEXP r_src, SEXP r_count, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpy(dst, src, count, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyPeer(SEXP r_dst, SEXP r_dstDevice, SEXP r_src, SEXP r_srcDevice, SEXP r_count)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    int dstDevice = INTEGER(r_dstDevice)[0];
    const void * src = GET_REF(r_src, const void );
    int srcDevice = INTEGER(r_srcDevice)[0];
    size_t count = REAL(r_count)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyPeer(dst, dstDevice, src, srcDevice, count);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyToArray(SEXP r_dst, SEXP r_wOffset, SEXP r_hOffset, SEXP r_src, SEXP r_count, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyToArray(dst, wOffset, hOffset, src, count, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyFromArray(SEXP r_dst, SEXP r_src, SEXP r_wOffset, SEXP r_hOffset, SEXP r_count, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyFromArray(dst, src, wOffset, hOffset, count, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyArrayToArray(SEXP r_dst, SEXP r_wOffsetDst, SEXP r_hOffsetDst, SEXP r_src, SEXP r_wOffsetSrc, SEXP r_hOffsetSrc, SEXP r_count, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffsetDst = REAL(r_wOffsetDst)[0];
    size_t hOffsetDst = REAL(r_hOffsetDst)[0];
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffsetSrc = REAL(r_wOffsetSrc)[0];
    size_t hOffsetSrc = REAL(r_hOffsetSrc)[0];
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyArrayToArray(dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, count, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2D(SEXP r_dst, SEXP r_dpitch, SEXP r_src, SEXP r_spitch, SEXP r_width, SEXP r_height, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    size_t dpitch = REAL(r_dpitch)[0];
    const void * src = GET_REF(r_src, const void );
    size_t spitch = REAL(r_spitch)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpy2D(dst, dpitch, src, spitch, width, height, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DToArray(SEXP r_dst, SEXP r_wOffset, SEXP r_hOffset, SEXP r_src, SEXP r_spitch, SEXP r_width, SEXP r_height, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    const void * src = GET_REF(r_src, const void );
    size_t spitch = REAL(r_spitch)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpy2DToArray(dst, wOffset, hOffset, src, spitch, width, height, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DFromArray(SEXP r_dst, SEXP r_dpitch, SEXP r_src, SEXP r_wOffset, SEXP r_hOffset, SEXP r_width, SEXP r_height, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    size_t dpitch = REAL(r_dpitch)[0];
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpy2DFromArray(dst, dpitch, src, wOffset, hOffset, width, height, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DArrayToArray(SEXP r_dst, SEXP r_wOffsetDst, SEXP r_hOffsetDst, SEXP r_src, SEXP r_wOffsetSrc, SEXP r_hOffsetSrc, SEXP r_width, SEXP r_height, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffsetDst = REAL(r_wOffsetDst)[0];
    size_t hOffsetDst = REAL(r_hOffsetDst)[0];
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffsetSrc = REAL(r_wOffsetSrc)[0];
    size_t hOffsetSrc = REAL(r_hOffsetSrc)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpy2DArrayToArray(dst, wOffsetDst, hOffsetDst, src, wOffsetSrc, hOffsetSrc, width, height, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyToSymbol(SEXP r_symbol, SEXP r_src, SEXP r_count, SEXP r_offset, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    const void * symbol = GET_REF(r_symbol, const void );
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    size_t offset = REAL(r_offset)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyToSymbol(symbol, src, count, offset, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyFromSymbol(SEXP r_dst, SEXP r_symbol, SEXP r_count, SEXP r_offset, SEXP r_kind)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    const void * symbol = GET_REF(r_symbol, const void );
    size_t count = REAL(r_count)[0];
    size_t offset = REAL(r_offset)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    
    cudaError_t ans;
    ans = cudaMemcpyFromSymbol(dst, symbol, count, offset, kind);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyAsync(SEXP r_dst, SEXP r_src, SEXP r_count, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyAsync(dst, src, count, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyPeerAsync(SEXP r_dst, SEXP r_dstDevice, SEXP r_src, SEXP r_srcDevice, SEXP r_count, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    int dstDevice = INTEGER(r_dstDevice)[0];
    const void * src = GET_REF(r_src, const void );
    int srcDevice = INTEGER(r_srcDevice)[0];
    size_t count = REAL(r_count)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyPeerAsync(dst, dstDevice, src, srcDevice, count, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyToArrayAsync(SEXP r_dst, SEXP r_wOffset, SEXP r_hOffset, SEXP r_src, SEXP r_count, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyToArrayAsync(dst, wOffset, hOffset, src, count, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyFromArrayAsync(SEXP r_dst, SEXP r_src, SEXP r_wOffset, SEXP r_hOffset, SEXP r_count, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    size_t count = REAL(r_count)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyFromArrayAsync(dst, src, wOffset, hOffset, count, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DAsync(SEXP r_dst, SEXP r_dpitch, SEXP r_src, SEXP r_spitch, SEXP r_width, SEXP r_height, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    size_t dpitch = REAL(r_dpitch)[0];
    const void * src = GET_REF(r_src, const void );
    size_t spitch = REAL(r_spitch)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpy2DAsync(dst, dpitch, src, spitch, width, height, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DToArrayAsync(SEXP r_dst, SEXP r_wOffset, SEXP r_hOffset, SEXP r_src, SEXP r_spitch, SEXP r_width, SEXP r_height, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    cudaArray_t dst = (cudaArray_t) getRReference(r_dst);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    const void * src = GET_REF(r_src, const void );
    size_t spitch = REAL(r_spitch)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpy2DToArrayAsync(dst, wOffset, hOffset, src, spitch, width, height, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpy2DFromArrayAsync(SEXP r_dst, SEXP r_dpitch, SEXP r_src, SEXP r_wOffset, SEXP r_hOffset, SEXP r_width, SEXP r_height, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    size_t dpitch = REAL(r_dpitch)[0];
    cudaArray_const_t src = (cudaArray_const_t) getRReference(r_src);
    size_t wOffset = REAL(r_wOffset)[0];
    size_t hOffset = REAL(r_hOffset)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpy2DFromArrayAsync(dst, dpitch, src, wOffset, hOffset, width, height, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyToSymbolAsync(SEXP r_symbol, SEXP r_src, SEXP r_count, SEXP r_offset, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    const void * symbol = GET_REF(r_symbol, const void );
    const void * src = GET_REF(r_src, const void );
    size_t count = REAL(r_count)[0];
    size_t offset = REAL(r_offset)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyToSymbolAsync(symbol, src, count, offset, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemcpyFromSymbolAsync(SEXP r_dst, SEXP r_symbol, SEXP r_count, SEXP r_offset, SEXP r_kind, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * dst = GET_REF(r_dst, void );
    const void * symbol = GET_REF(r_symbol, const void );
    size_t count = REAL(r_count)[0];
    size_t offset = REAL(r_offset)[0];
    enum cudaMemcpyKind kind = (enum cudaMemcpyKind) INTEGER(r_kind)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemcpyFromSymbolAsync(dst, symbol, count, offset, kind, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemset(SEXP r_devPtr, SEXP r_value, SEXP r_count)
{
    SEXP r_ans = R_NilValue;
    void * devPtr = GET_REF(r_devPtr, void );
    int value = INTEGER(r_value)[0];
    size_t count = REAL(r_count)[0];
    
    cudaError_t ans;
    ans = cudaMemset(devPtr, value, count);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemset2D(SEXP r_devPtr, SEXP r_pitch, SEXP r_value, SEXP r_width, SEXP r_height)
{
    SEXP r_ans = R_NilValue;
    void * devPtr = GET_REF(r_devPtr, void );
    size_t pitch = REAL(r_pitch)[0];
    int value = INTEGER(r_value)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    
    cudaError_t ans;
    ans = cudaMemset2D(devPtr, pitch, value, width, height);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemset3D(SEXP r_pitchedDevPtr, SEXP r_value, SEXP r_extent)
{
    SEXP r_ans = R_NilValue;
    struct cudaPitchedPtr pitchedDevPtr = * (struct cudaPitchedPtr *) getRReference(r_pitchedDevPtr);
    int value = INTEGER(r_value)[0];
    struct cudaExtent extent = * (struct cudaExtent *) getRReference(r_extent);
    
    cudaError_t ans;
    ans = cudaMemset3D(pitchedDevPtr, value, extent);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemsetAsync(SEXP r_devPtr, SEXP r_value, SEXP r_count, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * devPtr = GET_REF(r_devPtr, void );
    int value = INTEGER(r_value)[0];
    size_t count = REAL(r_count)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemsetAsync(devPtr, value, count, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemset2DAsync(SEXP r_devPtr, SEXP r_pitch, SEXP r_value, SEXP r_width, SEXP r_height, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    void * devPtr = GET_REF(r_devPtr, void );
    size_t pitch = REAL(r_pitch)[0];
    int value = INTEGER(r_value)[0];
    size_t width = REAL(r_width)[0];
    size_t height = REAL(r_height)[0];
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemset2DAsync(devPtr, pitch, value, width, height, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaMemset3DAsync(SEXP r_pitchedDevPtr, SEXP r_value, SEXP r_extent, SEXP r_stream)
{
    SEXP r_ans = R_NilValue;
    struct cudaPitchedPtr pitchedDevPtr = * (struct cudaPitchedPtr *) getRReference(r_pitchedDevPtr);
    int value = INTEGER(r_value)[0];
    struct cudaExtent extent = * (struct cudaExtent *) getRReference(r_extent);
    cudaStream_t stream = (cudaStream_t) getRReference(r_stream);
    
    cudaError_t ans;
    ans = cudaMemset3DAsync(pitchedDevPtr, value, extent, stream);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}
