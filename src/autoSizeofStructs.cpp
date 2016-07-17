// Generated programmatically at 2016-07-17 12:39:46 
#include "RCUDA.h"
#include <cuda.h>
#include <driver_types.h>
#include <texture_types.h>


extern "C"
SEXP R_getSizeofStructs()
{
    SEXP r_ans, names;
    unsigned int i = 0, n = 27;
    PROTECT(r_ans = NEW_INTEGER(n));
    PROTECT(names = NEW_CHARACTER(n));
    
    INTEGER(r_ans)[i] = sizeof(CUuuid_st);
    SET_STRING_ELT(names, i++, mkChar("CUuuid_st"));
    INTEGER(r_ans)[i] = sizeof(CUipcEventHandle_st);
    SET_STRING_ELT(names, i++, mkChar("CUipcEventHandle_st"));
    INTEGER(r_ans)[i] = sizeof(CUipcMemHandle_st);
    SET_STRING_ELT(names, i++, mkChar("CUipcMemHandle_st"));
    INTEGER(r_ans)[i] = sizeof(CUdevprop_st);
    SET_STRING_ELT(names, i++, mkChar("CUdevprop_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_MEMCPY2D_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_MEMCPY2D_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_MEMCPY3D_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_MEMCPY3D_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_MEMCPY3D_PEER_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_MEMCPY3D_PEER_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_ARRAY_DESCRIPTOR_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_ARRAY_DESCRIPTOR_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_ARRAY3D_DESCRIPTOR_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_ARRAY3D_DESCRIPTOR_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_RESOURCE_DESC_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_RESOURCE_DESC_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_TEXTURE_DESC_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_TEXTURE_DESC_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_RESOURCE_VIEW_DESC_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_RESOURCE_VIEW_DESC_st"));
    INTEGER(r_ans)[i] = sizeof(CUDA_POINTER_ATTRIBUTE_P2P_TOKENS_st);
    SET_STRING_ELT(names, i++, mkChar("CUDA_POINTER_ATTRIBUTE_P2P_TOKENS_st"));
    INTEGER(r_ans)[i] = sizeof(cudaChannelFormatDesc);
    SET_STRING_ELT(names, i++, mkChar("cudaChannelFormatDesc"));
    INTEGER(r_ans)[i] = sizeof(cudaPitchedPtr);
    SET_STRING_ELT(names, i++, mkChar("cudaPitchedPtr"));
    INTEGER(r_ans)[i] = sizeof(cudaExtent);
    SET_STRING_ELT(names, i++, mkChar("cudaExtent"));
    INTEGER(r_ans)[i] = sizeof(cudaPos);
    SET_STRING_ELT(names, i++, mkChar("cudaPos"));
    INTEGER(r_ans)[i] = sizeof(cudaMemcpy3DParms);
    SET_STRING_ELT(names, i++, mkChar("cudaMemcpy3DParms"));
    INTEGER(r_ans)[i] = sizeof(cudaMemcpy3DPeerParms);
    SET_STRING_ELT(names, i++, mkChar("cudaMemcpy3DPeerParms"));
    INTEGER(r_ans)[i] = sizeof(cudaResourceDesc);
    SET_STRING_ELT(names, i++, mkChar("cudaResourceDesc"));
    INTEGER(r_ans)[i] = sizeof(cudaResourceViewDesc);
    SET_STRING_ELT(names, i++, mkChar("cudaResourceViewDesc"));
    INTEGER(r_ans)[i] = sizeof(cudaPointerAttributes);
    SET_STRING_ELT(names, i++, mkChar("cudaPointerAttributes"));
    INTEGER(r_ans)[i] = sizeof(cudaFuncAttributes);
    SET_STRING_ELT(names, i++, mkChar("cudaFuncAttributes"));
    INTEGER(r_ans)[i] = sizeof(cudaDeviceProp);
    SET_STRING_ELT(names, i++, mkChar("cudaDeviceProp"));
    INTEGER(r_ans)[i] = sizeof(cudaIpcEventHandle_st);
    SET_STRING_ELT(names, i++, mkChar("cudaIpcEventHandle_st"));
    INTEGER(r_ans)[i] = sizeof(cudaIpcMemHandle_st);
    SET_STRING_ELT(names, i++, mkChar("cudaIpcMemHandle_st"));
    INTEGER(r_ans)[i] = sizeof(cudaTextureDesc);
    SET_STRING_ELT(names, i++, mkChar("cudaTextureDesc"));
    
    SET_NAMES(r_ans, names);
    UNPROTECT(2);
    return(r_ans);
}
