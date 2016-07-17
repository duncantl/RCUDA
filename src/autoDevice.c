// Generated programmatically at 2016-07-17 12:39:45 
#include "RCUDA.h"


SEXP
R_cuDeviceGet(SEXP r_ordinal)
{
    SEXP r_ans = R_NilValue;
    CUdevice device;
    int ordinal = INTEGER(r_ordinal)[0];
    CUresult ans;
    ans = cuDeviceGet(& device,  ordinal);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(device) ;
    return(r_ans);
}


SEXP
R_cuDeviceGetCount()
{
    SEXP r_ans = R_NilValue;
    int count;
    CUresult ans;
    ans = cuDeviceGetCount(& count);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(count) ;
    return(r_ans);
}


SEXP
R_cuDeviceGetName(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    char name[10000];
    int len = 10000;
    ans = cuDeviceGetName( name,  len,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = mkString(name) ;
    return(r_ans);
}


SEXP
R_cuDeviceTotalMem_v2(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    size_t bytes;
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDeviceTotalMem_v2(& bytes,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarReal(bytes) ;
    return(r_ans);
}


SEXP
R_cuDeviceGetAttribute(SEXP r_attrib, SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    int pi;
    CUdevice_attribute attrib = (CUdevice_attribute) INTEGER(r_attrib)[0];
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDeviceGetAttribute(& pi,  attrib,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(pi) ;
    return(r_ans);
}


SEXP
R_cuDevicePrimaryCtxRetain(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUcontext pctx;
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDevicePrimaryCtxRetain(& pctx,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = R_createRef(pctx, "CUcontext") ;
    return(r_ans);
}


SEXP R_cuDevicePrimaryCtxRelease(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev = INTEGER(r_dev)[0];
    
    CUresult ans;
    ans = cuDevicePrimaryCtxRelease(dev);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP R_cuDevicePrimaryCtxSetFlags(SEXP r_dev, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev = INTEGER(r_dev)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    CUresult ans;
    ans = cuDevicePrimaryCtxSetFlags(dev, flags);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuDevicePrimaryCtxGetState(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    unsigned int flags;
    int active;
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDevicePrimaryCtxGetState( dev, & flags, & active);
    if(ans)
       return(R_cudaErrorInfo(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarReal(flags));
    SET_VECTOR_ELT(r_ans, 1, ScalarInteger(active));
    SET_STRING_ELT(r_names, 0, mkChar("flags"));
    SET_STRING_ELT(r_names, 1, mkChar("active"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cuDevicePrimaryCtxReset(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev = INTEGER(r_dev)[0];
    
    CUresult ans;
    ans = cuDevicePrimaryCtxReset(dev);
    
    r_ans = Renum_convert_cudaError_enum(ans) ;
    
    return(r_ans);
}


SEXP
R_cuDeviceGetByPCIBusId(SEXP r_pciBusId)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev;
    const char * pciBusId = CHAR(STRING_ELT(r_pciBusId, 0));
    CUresult ans;
    ans = cuDeviceGetByPCIBusId(& dev,  pciBusId);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(dev) ;
    return(r_ans);
}


SEXP
R_cuDeviceGetPCIBusId(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    CUdevice dev = INTEGER(r_dev)[0];
    CUresult ans;
    char pciBusId[10000];
    int len = 10000;
    ans = cuDeviceGetPCIBusId( pciBusId,  len,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = mkString(pciBusId) ;
    return(r_ans);
}


SEXP
R_cuDeviceCanAccessPeer(SEXP r_dev, SEXP r_peerDev)
{
    SEXP r_ans = R_NilValue;
    int canAccessPeer;
    CUdevice dev = INTEGER(r_dev)[0];
    CUdevice peerDev = INTEGER(r_peerDev)[0];
    CUresult ans;
    ans = cuDeviceCanAccessPeer(& canAccessPeer,  dev,  peerDev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(canAccessPeer) ;
    return(r_ans);
}


SEXP R_cudaDeviceReset()
{
    SEXP r_ans = R_NilValue;
    
    cudaError_t ans;
    ans = cudaDeviceReset();
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaDeviceSynchronize()
{
    SEXP r_ans = R_NilValue;
    
    cudaError_t ans;
    ans = cudaDeviceSynchronize();
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaDeviceSetLimit(SEXP r_limit, SEXP r_value)
{
    SEXP r_ans = R_NilValue;
    enum cudaLimit limit = (enum cudaLimit) INTEGER(r_limit)[0];
    size_t value = REAL(r_value)[0];
    
    cudaError_t ans;
    ans = cudaDeviceSetLimit(limit, value);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaDeviceGetLimit(SEXP r_limit)
{
    SEXP r_ans = R_NilValue;
    size_t pValue;
    enum cudaLimit limit = (enum cudaLimit) INTEGER(r_limit)[0];
    cudaError_t ans;
    ans = cudaDeviceGetLimit(& pValue,  limit);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarReal(pValue) ;
    return(r_ans);
}


SEXP
R_cudaDeviceGetCacheConfig()
{
    SEXP r_ans = R_NilValue;
    enum cudaFuncCache pCacheConfig;
    cudaError_t ans;
    ans = cudaDeviceGetCacheConfig(& pCacheConfig);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = Renum_convert_cudaFuncCache(pCacheConfig) ;
    return(r_ans);
}


SEXP
R_cudaDeviceGetStreamPriorityRange()
{
    SEXP r_ans = R_NilValue;
    int leastPriority;
    int greatestPriority;
    cudaError_t ans;
    ans = cudaDeviceGetStreamPriorityRange(& leastPriority, & greatestPriority);
    if(ans)
       return(R_cudaError_t_Info(ans));
    PROTECT(r_ans = NEW_LIST(2));
    SEXP r_names;
    PROTECT(r_names = NEW_CHARACTER(2));
    SET_VECTOR_ELT(r_ans, 0, ScalarInteger(leastPriority));
    SET_VECTOR_ELT(r_ans, 1, ScalarInteger(greatestPriority));
    SET_STRING_ELT(r_names, 0, mkChar("leastPriority"));
    SET_STRING_ELT(r_names, 1, mkChar("greatestPriority"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP R_cudaDeviceSetCacheConfig(SEXP r_cacheConfig)
{
    SEXP r_ans = R_NilValue;
    enum cudaFuncCache cacheConfig = (enum cudaFuncCache) INTEGER(r_cacheConfig)[0];
    
    cudaError_t ans;
    ans = cudaDeviceSetCacheConfig(cacheConfig);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaDeviceGetSharedMemConfig()
{
    SEXP r_ans = R_NilValue;
    enum cudaSharedMemConfig pConfig;
    cudaError_t ans;
    ans = cudaDeviceGetSharedMemConfig(& pConfig);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = Renum_convert_cudaSharedMemConfig(pConfig) ;
    return(r_ans);
}


SEXP R_cudaDeviceSetSharedMemConfig(SEXP r_config)
{
    SEXP r_ans = R_NilValue;
    enum cudaSharedMemConfig config = (enum cudaSharedMemConfig) INTEGER(r_config)[0];
    
    cudaError_t ans;
    ans = cudaDeviceSetSharedMemConfig(config);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP
R_cudaDeviceGetByPCIBusId(SEXP r_pciBusId)
{
    SEXP r_ans = R_NilValue;
    int device;
    const char * pciBusId = CHAR(STRING_ELT(r_pciBusId, 0));
    cudaError_t ans;
    ans = cudaDeviceGetByPCIBusId(& device,  pciBusId);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(device) ;
    return(r_ans);
}


SEXP
R_cudaDeviceGetPCIBusId(SEXP r_device)
{
    SEXP r_ans = R_NilValue;
    int device = INTEGER(r_device)[0];
    cudaError_t ans;
    char pciBusId[10000];
    int len = 10000;
    ans = cudaDeviceGetPCIBusId( pciBusId,  len,  device);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = mkString(pciBusId) ;
    return(r_ans);
}


SEXP
R_cudaDeviceGetAttribute(SEXP r_attr, SEXP r_device)
{
    SEXP r_ans = R_NilValue;
    int value;
    enum cudaDeviceAttr attr = (enum cudaDeviceAttr) INTEGER(r_attr)[0];
    int device = INTEGER(r_device)[0];
    cudaError_t ans;
    ans = cudaDeviceGetAttribute(& value,  attr,  device);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(value) ;
    return(r_ans);
}


SEXP
R_cudaDeviceCanAccessPeer(SEXP r_device, SEXP r_peerDevice)
{
    SEXP r_ans = R_NilValue;
    int canAccessPeer;
    int device = INTEGER(r_device)[0];
    int peerDevice = INTEGER(r_peerDevice)[0];
    cudaError_t ans;
    ans = cudaDeviceCanAccessPeer(& canAccessPeer,  device,  peerDevice);
    if(ans)
       return(R_cudaError_t_Info(ans));
    r_ans = ScalarInteger(canAccessPeer) ;
    return(r_ans);
}


SEXP R_cudaDeviceEnablePeerAccess(SEXP r_peerDevice, SEXP r_flags)
{
    SEXP r_ans = R_NilValue;
    int peerDevice = INTEGER(r_peerDevice)[0];
    unsigned int flags = REAL(r_flags)[0];
    
    cudaError_t ans;
    ans = cudaDeviceEnablePeerAccess(peerDevice, flags);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}


SEXP R_cudaDeviceDisablePeerAccess(SEXP r_peerDevice)
{
    SEXP r_ans = R_NilValue;
    int peerDevice = INTEGER(r_peerDevice)[0];
    
    cudaError_t ans;
    ans = cudaDeviceDisablePeerAccess(peerDevice);
    
    r_ans = Renum_convert_cudaError(ans) ;
    
    return(r_ans);
}
