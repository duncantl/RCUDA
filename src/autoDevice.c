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
R_cuDeviceTotalMem(SEXP r_dev)
{
    SEXP r_ans = R_NilValue;
    size_t bytes;
    int dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDeviceTotalMem(& bytes,  dev);
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
    enum CUdevice_attribute_enum attrib = (enum CUdevice_attribute_enum) INTEGER(r_attrib)[0];
    int dev = INTEGER(r_dev)[0];
    CUresult ans;
    ans = cuDeviceGetAttribute(& pi,  attrib,  dev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(pi) ;
    return(r_ans);
}


SEXP
R_cuDeviceCanAccessPeer(SEXP r_dev, SEXP r_peerDev)
{
    SEXP r_ans = R_NilValue;
    int canAccessPeer;
    int dev = INTEGER(r_dev)[0];
    int peerDev = INTEGER(r_peerDev)[0];
    CUresult ans;
    ans = cuDeviceCanAccessPeer(& canAccessPeer,  dev,  peerDev);
    if(ans)
       return(R_cudaErrorInfo(ans));
    r_ans = ScalarInteger(canAccessPeer) ;
    return(r_ans);
}
