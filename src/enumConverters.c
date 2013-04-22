#include "RCUDA.h" 


    SEXP Renum_convert_CUipcMem_flags ( CUipcMem_flags  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS:
       elName = "CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUipcMem_flags"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUipcMem_flags"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
SEXP R_bitwise_enum_convert_CUctx_flags ( CUctx_flags val)
{
      return(
         R_bitwise_enum_convert(val, 
           (int []){
    	 CU_CTX_SCHED_AUTO,
		 CU_CTX_SCHED_SPIN,
		 CU_CTX_SCHED_YIELD,
		 CU_CTX_SCHED_BLOCKING_SYNC,
		 CU_CTX_SCHED_MASK,
		 CU_CTX_MAP_HOST,
		 CU_CTX_LMEM_RESIZE_TO_MAX,
		 CU_CTX_FLAGS_MASK
            },
           (const char * const []){
    	 "CU_CTX_SCHED_AUTO",
		 "CU_CTX_SCHED_SPIN",
		 "CU_CTX_SCHED_YIELD",
		 "CU_CTX_SCHED_BLOCKING_SYNC",
		 "CU_CTX_SCHED_MASK",
		 "CU_CTX_MAP_HOST",
		 "CU_CTX_LMEM_RESIZE_TO_MAX",
		 "CU_CTX_FLAGS_MASK"
             }, 8 ,
    "CUctx_flags_enum::CUctx_flags"
      ));
}
 
    SEXP Renum_convert_CUstream_flags ( CUstream_flags  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_STREAM_DEFAULT:
       elName = "CU_STREAM_DEFAULT";
     break;
        case CU_STREAM_NON_BLOCKING:
       elName = "CU_STREAM_NON_BLOCKING";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUstream_flags"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUstream_flags"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
SEXP R_bitwise_enum_convert_CUevent_flags ( CUevent_flags val)
{
      return(
         R_bitwise_enum_convert(val, 
           (int []){
    	 CU_EVENT_DEFAULT,
		 CU_EVENT_BLOCKING_SYNC,
		 CU_EVENT_DISABLE_TIMING,
		 CU_EVENT_INTERPROCESS
            },
           (const char * const []){
    	 "CU_EVENT_DEFAULT",
		 "CU_EVENT_BLOCKING_SYNC",
		 "CU_EVENT_DISABLE_TIMING",
		 "CU_EVENT_INTERPROCESS"
             }, 4 ,
    "CUevent_flags_enum::CUevent_flags"
      ));
}
 
SEXP R_bitwise_enum_convert_CUarray_format ( CUarray_format val)
{
      return(
         R_bitwise_enum_convert(val, 
           (int []){
    	 CU_AD_FORMAT_UNSIGNED_INT8,
		 CU_AD_FORMAT_UNSIGNED_INT16,
		 CU_AD_FORMAT_UNSIGNED_INT32,
		 CU_AD_FORMAT_SIGNED_INT8,
		 CU_AD_FORMAT_SIGNED_INT16,
		 CU_AD_FORMAT_SIGNED_INT32,
		 CU_AD_FORMAT_HALF,
		 CU_AD_FORMAT_FLOAT
            },
           (const char * const []){
    	 "CU_AD_FORMAT_UNSIGNED_INT8",
		 "CU_AD_FORMAT_UNSIGNED_INT16",
		 "CU_AD_FORMAT_UNSIGNED_INT32",
		 "CU_AD_FORMAT_SIGNED_INT8",
		 "CU_AD_FORMAT_SIGNED_INT16",
		 "CU_AD_FORMAT_SIGNED_INT32",
		 "CU_AD_FORMAT_HALF",
		 "CU_AD_FORMAT_FLOAT"
             }, 8 ,
    "CUarray_format_enum::CUarray_format"
      ));
}
 
    SEXP Renum_convert_CUaddress_mode ( CUaddress_mode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_TR_ADDRESS_MODE_WRAP:
       elName = "CU_TR_ADDRESS_MODE_WRAP";
     break;
        case CU_TR_ADDRESS_MODE_CLAMP:
       elName = "CU_TR_ADDRESS_MODE_CLAMP";
     break;
        case CU_TR_ADDRESS_MODE_MIRROR:
       elName = "CU_TR_ADDRESS_MODE_MIRROR";
     break;
        case CU_TR_ADDRESS_MODE_BORDER:
       elName = "CU_TR_ADDRESS_MODE_BORDER";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUaddress_mode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUaddress_mode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUfilter_mode ( CUfilter_mode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_TR_FILTER_MODE_POINT:
       elName = "CU_TR_FILTER_MODE_POINT";
     break;
        case CU_TR_FILTER_MODE_LINEAR:
       elName = "CU_TR_FILTER_MODE_LINEAR";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUfilter_mode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUfilter_mode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUdevice_attribute ( CUdevice_attribute  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK";
     break;
        case CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY:
       elName = "CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY";
     break;
        case CU_DEVICE_ATTRIBUTE_WARP_SIZE:
       elName = "CU_DEVICE_ATTRIBUTE_WARP_SIZE";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_PITCH:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_PITCH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK";
     break;
        case CU_DEVICE_ATTRIBUTE_CLOCK_RATE:
       elName = "CU_DEVICE_ATTRIBUTE_CLOCK_RATE";
     break;
        case CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT:
       elName = "CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT";
     break;
        case CU_DEVICE_ATTRIBUTE_GPU_OVERLAP:
       elName = "CU_DEVICE_ATTRIBUTE_GPU_OVERLAP";
     break;
        case CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT:
       elName = "CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT";
     break;
        case CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT:
       elName = "CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT";
     break;
        case CU_DEVICE_ATTRIBUTE_INTEGRATED:
       elName = "CU_DEVICE_ATTRIBUTE_INTEGRATED";
     break;
        case CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY:
       elName = "CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY";
     break;
        case CU_DEVICE_ATTRIBUTE_COMPUTE_MODE:
       elName = "CU_DEVICE_ATTRIBUTE_COMPUTE_MODE";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT:
       elName = "CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT";
     break;
        case CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS:
       elName = "CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS";
     break;
        case CU_DEVICE_ATTRIBUTE_ECC_ENABLED:
       elName = "CU_DEVICE_ATTRIBUTE_ECC_ENABLED";
     break;
        case CU_DEVICE_ATTRIBUTE_PCI_BUS_ID:
       elName = "CU_DEVICE_ATTRIBUTE_PCI_BUS_ID";
     break;
        case CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID:
       elName = "CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID";
     break;
        case CU_DEVICE_ATTRIBUTE_TCC_DRIVER:
       elName = "CU_DEVICE_ATTRIBUTE_TCC_DRIVER";
     break;
        case CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE:
       elName = "CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE";
     break;
        case CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE:
       elName = "CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR:
       elName = "CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR";
     break;
        case CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT:
       elName = "CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT";
     break;
        case CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING:
       elName = "CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER:
       elName = "CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE";
     break;
        case CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID:
       elName = "CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID";
     break;
        case CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT:
       elName = "CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT";
     break;
        case CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR:
       elName = "CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR";
     break;
        case CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR:
       elName = "CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR";
     break;
        case CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH:
       elName = "CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH";
     break;
        case CU_DEVICE_ATTRIBUTE_MAX:
       elName = "CU_DEVICE_ATTRIBUTE_MAX";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUdevice_attribute"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUdevice_attribute"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUpointer_attribute ( CUpointer_attribute  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_POINTER_ATTRIBUTE_CONTEXT:
       elName = "CU_POINTER_ATTRIBUTE_CONTEXT";
     break;
        case CU_POINTER_ATTRIBUTE_MEMORY_TYPE:
       elName = "CU_POINTER_ATTRIBUTE_MEMORY_TYPE";
     break;
        case CU_POINTER_ATTRIBUTE_DEVICE_POINTER:
       elName = "CU_POINTER_ATTRIBUTE_DEVICE_POINTER";
     break;
        case CU_POINTER_ATTRIBUTE_HOST_POINTER:
       elName = "CU_POINTER_ATTRIBUTE_HOST_POINTER";
     break;
        case CU_POINTER_ATTRIBUTE_P2P_TOKENS:
       elName = "CU_POINTER_ATTRIBUTE_P2P_TOKENS";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUpointer_attribute"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUpointer_attribute"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUfunction_attribute ( CUfunction_attribute  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK:
       elName = "CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK";
     break;
        case CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES:
       elName = "CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES";
     break;
        case CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES:
       elName = "CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES";
     break;
        case CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES:
       elName = "CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES";
     break;
        case CU_FUNC_ATTRIBUTE_NUM_REGS:
       elName = "CU_FUNC_ATTRIBUTE_NUM_REGS";
     break;
        case CU_FUNC_ATTRIBUTE_PTX_VERSION:
       elName = "CU_FUNC_ATTRIBUTE_PTX_VERSION";
     break;
        case CU_FUNC_ATTRIBUTE_BINARY_VERSION:
       elName = "CU_FUNC_ATTRIBUTE_BINARY_VERSION";
     break;
        case CU_FUNC_ATTRIBUTE_MAX:
       elName = "CU_FUNC_ATTRIBUTE_MAX";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUfunction_attribute"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUfunction_attribute"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUfunc_cache ( CUfunc_cache  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_FUNC_CACHE_PREFER_NONE:
       elName = "CU_FUNC_CACHE_PREFER_NONE";
     break;
        case CU_FUNC_CACHE_PREFER_SHARED:
       elName = "CU_FUNC_CACHE_PREFER_SHARED";
     break;
        case CU_FUNC_CACHE_PREFER_L1:
       elName = "CU_FUNC_CACHE_PREFER_L1";
     break;
        case CU_FUNC_CACHE_PREFER_EQUAL:
       elName = "CU_FUNC_CACHE_PREFER_EQUAL";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUfunc_cache"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUfunc_cache"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUsharedconfig ( CUsharedconfig  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE:
       elName = "CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE";
     break;
        case CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE:
       elName = "CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE";
     break;
        case CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE:
       elName = "CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUsharedconfig"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUsharedconfig"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUmemorytype ( CUmemorytype  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_MEMORYTYPE_HOST:
       elName = "CU_MEMORYTYPE_HOST";
     break;
        case CU_MEMORYTYPE_DEVICE:
       elName = "CU_MEMORYTYPE_DEVICE";
     break;
        case CU_MEMORYTYPE_ARRAY:
       elName = "CU_MEMORYTYPE_ARRAY";
     break;
        case CU_MEMORYTYPE_UNIFIED:
       elName = "CU_MEMORYTYPE_UNIFIED";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUmemorytype"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUmemorytype"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUcomputemode ( CUcomputemode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_COMPUTEMODE_DEFAULT:
       elName = "CU_COMPUTEMODE_DEFAULT";
     break;
        case CU_COMPUTEMODE_EXCLUSIVE:
       elName = "CU_COMPUTEMODE_EXCLUSIVE";
     break;
        case CU_COMPUTEMODE_PROHIBITED:
       elName = "CU_COMPUTEMODE_PROHIBITED";
     break;
        case CU_COMPUTEMODE_EXCLUSIVE_PROCESS:
       elName = "CU_COMPUTEMODE_EXCLUSIVE_PROCESS";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUcomputemode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUcomputemode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUjit_option ( CUjit_option  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_JIT_MAX_REGISTERS:
       elName = "CU_JIT_MAX_REGISTERS";
     break;
        case CU_JIT_THREADS_PER_BLOCK:
       elName = "CU_JIT_THREADS_PER_BLOCK";
     break;
        case CU_JIT_WALL_TIME:
       elName = "CU_JIT_WALL_TIME";
     break;
        case CU_JIT_INFO_LOG_BUFFER:
       elName = "CU_JIT_INFO_LOG_BUFFER";
     break;
        case CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES:
       elName = "CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES";
     break;
        case CU_JIT_ERROR_LOG_BUFFER:
       elName = "CU_JIT_ERROR_LOG_BUFFER";
     break;
        case CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES:
       elName = "CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES";
     break;
        case CU_JIT_OPTIMIZATION_LEVEL:
       elName = "CU_JIT_OPTIMIZATION_LEVEL";
     break;
        case CU_JIT_TARGET_FROM_CUCONTEXT:
       elName = "CU_JIT_TARGET_FROM_CUCONTEXT";
     break;
        case CU_JIT_TARGET:
       elName = "CU_JIT_TARGET";
     break;
        case CU_JIT_FALLBACK_STRATEGY:
       elName = "CU_JIT_FALLBACK_STRATEGY";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUjit_option"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUjit_option"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUjit_target ( CUjit_target  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_TARGET_COMPUTE_10:
       elName = "CU_TARGET_COMPUTE_10";
     break;
        case CU_TARGET_COMPUTE_11:
       elName = "CU_TARGET_COMPUTE_11";
     break;
        case CU_TARGET_COMPUTE_12:
       elName = "CU_TARGET_COMPUTE_12";
     break;
        case CU_TARGET_COMPUTE_13:
       elName = "CU_TARGET_COMPUTE_13";
     break;
        case CU_TARGET_COMPUTE_20:
       elName = "CU_TARGET_COMPUTE_20";
     break;
        case CU_TARGET_COMPUTE_21:
       elName = "CU_TARGET_COMPUTE_21";
     break;
        case CU_TARGET_COMPUTE_30:
       elName = "CU_TARGET_COMPUTE_30";
     break;
        case CU_TARGET_COMPUTE_35:
       elName = "CU_TARGET_COMPUTE_35";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUjit_target"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUjit_target"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUjit_fallback ( CUjit_fallback  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_PREFER_PTX:
       elName = "CU_PREFER_PTX";
     break;
        case CU_PREFER_BINARY:
       elName = "CU_PREFER_BINARY";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUjit_fallback"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUjit_fallback"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
SEXP R_bitwise_enum_convert_CUgraphicsRegisterFlags ( CUgraphicsRegisterFlags val)
{
      return(
         R_bitwise_enum_convert(val, 
           (int []){
    	 CU_GRAPHICS_REGISTER_FLAGS_NONE,
		 CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY,
		 CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD,
		 CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST,
		 CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER
            },
           (const char * const []){
    	 "CU_GRAPHICS_REGISTER_FLAGS_NONE",
		 "CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY",
		 "CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD",
		 "CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST",
		 "CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER"
             }, 5 ,
    "CUgraphicsRegisterFlags_enum::CUgraphicsRegisterFlags"
      ));
}
 
    SEXP Renum_convert_CUgraphicsMapResourceFlags ( CUgraphicsMapResourceFlags  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE:
       elName = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE";
     break;
        case CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY:
       elName = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY";
     break;
        case CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD:
       elName = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUgraphicsMapResourceFlags"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUgraphicsMapResourceFlags"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUarray_cubemap_face ( CUarray_cubemap_face  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_CUBEMAP_FACE_POSITIVE_X:
       elName = "CU_CUBEMAP_FACE_POSITIVE_X";
     break;
        case CU_CUBEMAP_FACE_NEGATIVE_X:
       elName = "CU_CUBEMAP_FACE_NEGATIVE_X";
     break;
        case CU_CUBEMAP_FACE_POSITIVE_Y:
       elName = "CU_CUBEMAP_FACE_POSITIVE_Y";
     break;
        case CU_CUBEMAP_FACE_NEGATIVE_Y:
       elName = "CU_CUBEMAP_FACE_NEGATIVE_Y";
     break;
        case CU_CUBEMAP_FACE_POSITIVE_Z:
       elName = "CU_CUBEMAP_FACE_POSITIVE_Z";
     break;
        case CU_CUBEMAP_FACE_NEGATIVE_Z:
       elName = "CU_CUBEMAP_FACE_NEGATIVE_Z";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUarray_cubemap_face"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUarray_cubemap_face"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUlimit ( CUlimit  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_LIMIT_STACK_SIZE:
       elName = "CU_LIMIT_STACK_SIZE";
     break;
        case CU_LIMIT_PRINTF_FIFO_SIZE:
       elName = "CU_LIMIT_PRINTF_FIFO_SIZE";
     break;
        case CU_LIMIT_MALLOC_HEAP_SIZE:
       elName = "CU_LIMIT_MALLOC_HEAP_SIZE";
     break;
        case CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH:
       elName = "CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH";
     break;
        case CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT:
       elName = "CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUlimit"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUlimit"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUresourcetype ( CUresourcetype  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_RESOURCE_TYPE_ARRAY:
       elName = "CU_RESOURCE_TYPE_ARRAY";
     break;
        case CU_RESOURCE_TYPE_MIPMAPPED_ARRAY:
       elName = "CU_RESOURCE_TYPE_MIPMAPPED_ARRAY";
     break;
        case CU_RESOURCE_TYPE_LINEAR:
       elName = "CU_RESOURCE_TYPE_LINEAR";
     break;
        case CU_RESOURCE_TYPE_PITCH2D:
       elName = "CU_RESOURCE_TYPE_PITCH2D";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUresourcetype"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUresourcetype"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUresult ( CUresult  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUDA_SUCCESS:
       elName = "CUDA_SUCCESS";
     break;
        case CUDA_ERROR_INVALID_VALUE:
       elName = "CUDA_ERROR_INVALID_VALUE";
     break;
        case CUDA_ERROR_OUT_OF_MEMORY:
       elName = "CUDA_ERROR_OUT_OF_MEMORY";
     break;
        case CUDA_ERROR_NOT_INITIALIZED:
       elName = "CUDA_ERROR_NOT_INITIALIZED";
     break;
        case CUDA_ERROR_DEINITIALIZED:
       elName = "CUDA_ERROR_DEINITIALIZED";
     break;
        case CUDA_ERROR_PROFILER_DISABLED:
       elName = "CUDA_ERROR_PROFILER_DISABLED";
     break;
        case CUDA_ERROR_PROFILER_NOT_INITIALIZED:
       elName = "CUDA_ERROR_PROFILER_NOT_INITIALIZED";
     break;
        case CUDA_ERROR_PROFILER_ALREADY_STARTED:
       elName = "CUDA_ERROR_PROFILER_ALREADY_STARTED";
     break;
        case CUDA_ERROR_PROFILER_ALREADY_STOPPED:
       elName = "CUDA_ERROR_PROFILER_ALREADY_STOPPED";
     break;
        case CUDA_ERROR_NO_DEVICE:
       elName = "CUDA_ERROR_NO_DEVICE";
     break;
        case CUDA_ERROR_INVALID_DEVICE:
       elName = "CUDA_ERROR_INVALID_DEVICE";
     break;
        case CUDA_ERROR_INVALID_IMAGE:
       elName = "CUDA_ERROR_INVALID_IMAGE";
     break;
        case CUDA_ERROR_INVALID_CONTEXT:
       elName = "CUDA_ERROR_INVALID_CONTEXT";
     break;
        case CUDA_ERROR_CONTEXT_ALREADY_CURRENT:
       elName = "CUDA_ERROR_CONTEXT_ALREADY_CURRENT";
     break;
        case CUDA_ERROR_MAP_FAILED:
       elName = "CUDA_ERROR_MAP_FAILED";
     break;
        case CUDA_ERROR_UNMAP_FAILED:
       elName = "CUDA_ERROR_UNMAP_FAILED";
     break;
        case CUDA_ERROR_ARRAY_IS_MAPPED:
       elName = "CUDA_ERROR_ARRAY_IS_MAPPED";
     break;
        case CUDA_ERROR_ALREADY_MAPPED:
       elName = "CUDA_ERROR_ALREADY_MAPPED";
     break;
        case CUDA_ERROR_NO_BINARY_FOR_GPU:
       elName = "CUDA_ERROR_NO_BINARY_FOR_GPU";
     break;
        case CUDA_ERROR_ALREADY_ACQUIRED:
       elName = "CUDA_ERROR_ALREADY_ACQUIRED";
     break;
        case CUDA_ERROR_NOT_MAPPED:
       elName = "CUDA_ERROR_NOT_MAPPED";
     break;
        case CUDA_ERROR_NOT_MAPPED_AS_ARRAY:
       elName = "CUDA_ERROR_NOT_MAPPED_AS_ARRAY";
     break;
        case CUDA_ERROR_NOT_MAPPED_AS_POINTER:
       elName = "CUDA_ERROR_NOT_MAPPED_AS_POINTER";
     break;
        case CUDA_ERROR_ECC_UNCORRECTABLE:
       elName = "CUDA_ERROR_ECC_UNCORRECTABLE";
     break;
        case CUDA_ERROR_UNSUPPORTED_LIMIT:
       elName = "CUDA_ERROR_UNSUPPORTED_LIMIT";
     break;
        case CUDA_ERROR_CONTEXT_ALREADY_IN_USE:
       elName = "CUDA_ERROR_CONTEXT_ALREADY_IN_USE";
     break;
        case CUDA_ERROR_PEER_ACCESS_UNSUPPORTED:
       elName = "CUDA_ERROR_PEER_ACCESS_UNSUPPORTED";
     break;
        case CUDA_ERROR_INVALID_SOURCE:
       elName = "CUDA_ERROR_INVALID_SOURCE";
     break;
        case CUDA_ERROR_FILE_NOT_FOUND:
       elName = "CUDA_ERROR_FILE_NOT_FOUND";
     break;
        case CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND:
       elName = "CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND";
     break;
        case CUDA_ERROR_SHARED_OBJECT_INIT_FAILED:
       elName = "CUDA_ERROR_SHARED_OBJECT_INIT_FAILED";
     break;
        case CUDA_ERROR_OPERATING_SYSTEM:
       elName = "CUDA_ERROR_OPERATING_SYSTEM";
     break;
        case CUDA_ERROR_INVALID_HANDLE:
       elName = "CUDA_ERROR_INVALID_HANDLE";
     break;
        case CUDA_ERROR_NOT_FOUND:
       elName = "CUDA_ERROR_NOT_FOUND";
     break;
        case CUDA_ERROR_NOT_READY:
       elName = "CUDA_ERROR_NOT_READY";
     break;
        case CUDA_ERROR_LAUNCH_FAILED:
       elName = "CUDA_ERROR_LAUNCH_FAILED";
     break;
        case CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES:
       elName = "CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES";
     break;
        case CUDA_ERROR_LAUNCH_TIMEOUT:
       elName = "CUDA_ERROR_LAUNCH_TIMEOUT";
     break;
        case CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING:
       elName = "CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING";
     break;
        case CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED:
       elName = "CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED";
     break;
        case CUDA_ERROR_PEER_ACCESS_NOT_ENABLED:
       elName = "CUDA_ERROR_PEER_ACCESS_NOT_ENABLED";
     break;
        case CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE:
       elName = "CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE";
     break;
        case CUDA_ERROR_CONTEXT_IS_DESTROYED:
       elName = "CUDA_ERROR_CONTEXT_IS_DESTROYED";
     break;
        case CUDA_ERROR_ASSERT:
       elName = "CUDA_ERROR_ASSERT";
     break;
        case CUDA_ERROR_TOO_MANY_PEERS:
       elName = "CUDA_ERROR_TOO_MANY_PEERS";
     break;
        case CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED:
       elName = "CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED";
     break;
        case CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED:
       elName = "CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED";
     break;
        case CUDA_ERROR_NOT_PERMITTED:
       elName = "CUDA_ERROR_NOT_PERMITTED";
     break;
        case CUDA_ERROR_NOT_SUPPORTED:
       elName = "CUDA_ERROR_NOT_SUPPORTED";
     break;
        case CUDA_ERROR_UNKNOWN:
       elName = "CUDA_ERROR_UNKNOWN";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUresult"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUresult"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_CUresourceViewFormat ( CUresourceViewFormat  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CU_RES_VIEW_FORMAT_NONE:
       elName = "CU_RES_VIEW_FORMAT_NONE";
     break;
        case CU_RES_VIEW_FORMAT_UINT_1X8:
       elName = "CU_RES_VIEW_FORMAT_UINT_1X8";
     break;
        case CU_RES_VIEW_FORMAT_UINT_2X8:
       elName = "CU_RES_VIEW_FORMAT_UINT_2X8";
     break;
        case CU_RES_VIEW_FORMAT_UINT_4X8:
       elName = "CU_RES_VIEW_FORMAT_UINT_4X8";
     break;
        case CU_RES_VIEW_FORMAT_SINT_1X8:
       elName = "CU_RES_VIEW_FORMAT_SINT_1X8";
     break;
        case CU_RES_VIEW_FORMAT_SINT_2X8:
       elName = "CU_RES_VIEW_FORMAT_SINT_2X8";
     break;
        case CU_RES_VIEW_FORMAT_SINT_4X8:
       elName = "CU_RES_VIEW_FORMAT_SINT_4X8";
     break;
        case CU_RES_VIEW_FORMAT_UINT_1X16:
       elName = "CU_RES_VIEW_FORMAT_UINT_1X16";
     break;
        case CU_RES_VIEW_FORMAT_UINT_2X16:
       elName = "CU_RES_VIEW_FORMAT_UINT_2X16";
     break;
        case CU_RES_VIEW_FORMAT_UINT_4X16:
       elName = "CU_RES_VIEW_FORMAT_UINT_4X16";
     break;
        case CU_RES_VIEW_FORMAT_SINT_1X16:
       elName = "CU_RES_VIEW_FORMAT_SINT_1X16";
     break;
        case CU_RES_VIEW_FORMAT_SINT_2X16:
       elName = "CU_RES_VIEW_FORMAT_SINT_2X16";
     break;
        case CU_RES_VIEW_FORMAT_SINT_4X16:
       elName = "CU_RES_VIEW_FORMAT_SINT_4X16";
     break;
        case CU_RES_VIEW_FORMAT_UINT_1X32:
       elName = "CU_RES_VIEW_FORMAT_UINT_1X32";
     break;
        case CU_RES_VIEW_FORMAT_UINT_2X32:
       elName = "CU_RES_VIEW_FORMAT_UINT_2X32";
     break;
        case CU_RES_VIEW_FORMAT_UINT_4X32:
       elName = "CU_RES_VIEW_FORMAT_UINT_4X32";
     break;
        case CU_RES_VIEW_FORMAT_SINT_1X32:
       elName = "CU_RES_VIEW_FORMAT_SINT_1X32";
     break;
        case CU_RES_VIEW_FORMAT_SINT_2X32:
       elName = "CU_RES_VIEW_FORMAT_SINT_2X32";
     break;
        case CU_RES_VIEW_FORMAT_SINT_4X32:
       elName = "CU_RES_VIEW_FORMAT_SINT_4X32";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_1X16:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_1X16";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_2X16:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_2X16";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_4X16:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_4X16";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_1X32:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_1X32";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_2X32:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_2X32";
     break;
        case CU_RES_VIEW_FORMAT_FLOAT_4X32:
       elName = "CU_RES_VIEW_FORMAT_FLOAT_4X32";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC1:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC1";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC2:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC2";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC3:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC3";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC4:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC4";
     break;
        case CU_RES_VIEW_FORMAT_SIGNED_BC4:
       elName = "CU_RES_VIEW_FORMAT_SIGNED_BC4";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC5:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC5";
     break;
        case CU_RES_VIEW_FORMAT_SIGNED_BC5:
       elName = "CU_RES_VIEW_FORMAT_SIGNED_BC5";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC6H:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC6H";
     break;
        case CU_RES_VIEW_FORMAT_SIGNED_BC6H:
       elName = "CU_RES_VIEW_FORMAT_SIGNED_BC6H";
     break;
        case CU_RES_VIEW_FORMAT_UNSIGNED_BC7:
       elName = "CU_RES_VIEW_FORMAT_UNSIGNED_BC7";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("CUresourceViewFormat"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("CUresourceViewFormat"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaError_t ( cudaError_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaSuccess:
       elName = "cudaSuccess";
     break;
        case cudaErrorMissingConfiguration:
       elName = "cudaErrorMissingConfiguration";
     break;
        case cudaErrorMemoryAllocation:
       elName = "cudaErrorMemoryAllocation";
     break;
        case cudaErrorInitializationError:
       elName = "cudaErrorInitializationError";
     break;
        case cudaErrorLaunchFailure:
       elName = "cudaErrorLaunchFailure";
     break;
        case cudaErrorPriorLaunchFailure:
       elName = "cudaErrorPriorLaunchFailure";
     break;
        case cudaErrorLaunchTimeout:
       elName = "cudaErrorLaunchTimeout";
     break;
        case cudaErrorLaunchOutOfResources:
       elName = "cudaErrorLaunchOutOfResources";
     break;
        case cudaErrorInvalidDeviceFunction:
       elName = "cudaErrorInvalidDeviceFunction";
     break;
        case cudaErrorInvalidConfiguration:
       elName = "cudaErrorInvalidConfiguration";
     break;
        case cudaErrorInvalidDevice:
       elName = "cudaErrorInvalidDevice";
     break;
        case cudaErrorInvalidValue:
       elName = "cudaErrorInvalidValue";
     break;
        case cudaErrorInvalidPitchValue:
       elName = "cudaErrorInvalidPitchValue";
     break;
        case cudaErrorInvalidSymbol:
       elName = "cudaErrorInvalidSymbol";
     break;
        case cudaErrorMapBufferObjectFailed:
       elName = "cudaErrorMapBufferObjectFailed";
     break;
        case cudaErrorUnmapBufferObjectFailed:
       elName = "cudaErrorUnmapBufferObjectFailed";
     break;
        case cudaErrorInvalidHostPointer:
       elName = "cudaErrorInvalidHostPointer";
     break;
        case cudaErrorInvalidDevicePointer:
       elName = "cudaErrorInvalidDevicePointer";
     break;
        case cudaErrorInvalidTexture:
       elName = "cudaErrorInvalidTexture";
     break;
        case cudaErrorInvalidTextureBinding:
       elName = "cudaErrorInvalidTextureBinding";
     break;
        case cudaErrorInvalidChannelDescriptor:
       elName = "cudaErrorInvalidChannelDescriptor";
     break;
        case cudaErrorInvalidMemcpyDirection:
       elName = "cudaErrorInvalidMemcpyDirection";
     break;
        case cudaErrorAddressOfConstant:
       elName = "cudaErrorAddressOfConstant";
     break;
        case cudaErrorTextureFetchFailed:
       elName = "cudaErrorTextureFetchFailed";
     break;
        case cudaErrorTextureNotBound:
       elName = "cudaErrorTextureNotBound";
     break;
        case cudaErrorSynchronizationError:
       elName = "cudaErrorSynchronizationError";
     break;
        case cudaErrorInvalidFilterSetting:
       elName = "cudaErrorInvalidFilterSetting";
     break;
        case cudaErrorInvalidNormSetting:
       elName = "cudaErrorInvalidNormSetting";
     break;
        case cudaErrorMixedDeviceExecution:
       elName = "cudaErrorMixedDeviceExecution";
     break;
        case cudaErrorCudartUnloading:
       elName = "cudaErrorCudartUnloading";
     break;
        case cudaErrorUnknown:
       elName = "cudaErrorUnknown";
     break;
        case cudaErrorNotYetImplemented:
       elName = "cudaErrorNotYetImplemented";
     break;
        case cudaErrorMemoryValueTooLarge:
       elName = "cudaErrorMemoryValueTooLarge";
     break;
        case cudaErrorInvalidResourceHandle:
       elName = "cudaErrorInvalidResourceHandle";
     break;
        case cudaErrorNotReady:
       elName = "cudaErrorNotReady";
     break;
        case cudaErrorInsufficientDriver:
       elName = "cudaErrorInsufficientDriver";
     break;
        case cudaErrorSetOnActiveProcess:
       elName = "cudaErrorSetOnActiveProcess";
     break;
        case cudaErrorInvalidSurface:
       elName = "cudaErrorInvalidSurface";
     break;
        case cudaErrorNoDevice:
       elName = "cudaErrorNoDevice";
     break;
        case cudaErrorECCUncorrectable:
       elName = "cudaErrorECCUncorrectable";
     break;
        case cudaErrorSharedObjectSymbolNotFound:
       elName = "cudaErrorSharedObjectSymbolNotFound";
     break;
        case cudaErrorSharedObjectInitFailed:
       elName = "cudaErrorSharedObjectInitFailed";
     break;
        case cudaErrorUnsupportedLimit:
       elName = "cudaErrorUnsupportedLimit";
     break;
        case cudaErrorDuplicateVariableName:
       elName = "cudaErrorDuplicateVariableName";
     break;
        case cudaErrorDuplicateTextureName:
       elName = "cudaErrorDuplicateTextureName";
     break;
        case cudaErrorDuplicateSurfaceName:
       elName = "cudaErrorDuplicateSurfaceName";
     break;
        case cudaErrorDevicesUnavailable:
       elName = "cudaErrorDevicesUnavailable";
     break;
        case cudaErrorInvalidKernelImage:
       elName = "cudaErrorInvalidKernelImage";
     break;
        case cudaErrorNoKernelImageForDevice:
       elName = "cudaErrorNoKernelImageForDevice";
     break;
        case cudaErrorIncompatibleDriverContext:
       elName = "cudaErrorIncompatibleDriverContext";
     break;
        case cudaErrorPeerAccessAlreadyEnabled:
       elName = "cudaErrorPeerAccessAlreadyEnabled";
     break;
        case cudaErrorPeerAccessNotEnabled:
       elName = "cudaErrorPeerAccessNotEnabled";
     break;
        case cudaErrorDeviceAlreadyInUse:
       elName = "cudaErrorDeviceAlreadyInUse";
     break;
        case cudaErrorProfilerDisabled:
       elName = "cudaErrorProfilerDisabled";
     break;
        case cudaErrorProfilerNotInitialized:
       elName = "cudaErrorProfilerNotInitialized";
     break;
        case cudaErrorProfilerAlreadyStarted:
       elName = "cudaErrorProfilerAlreadyStarted";
     break;
        case cudaErrorProfilerAlreadyStopped:
       elName = "cudaErrorProfilerAlreadyStopped";
     break;
        case cudaErrorAssert:
       elName = "cudaErrorAssert";
     break;
        case cudaErrorTooManyPeers:
       elName = "cudaErrorTooManyPeers";
     break;
        case cudaErrorHostMemoryAlreadyRegistered:
       elName = "cudaErrorHostMemoryAlreadyRegistered";
     break;
        case cudaErrorHostMemoryNotRegistered:
       elName = "cudaErrorHostMemoryNotRegistered";
     break;
        case cudaErrorOperatingSystem:
       elName = "cudaErrorOperatingSystem";
     break;
        case cudaErrorPeerAccessUnsupported:
       elName = "cudaErrorPeerAccessUnsupported";
     break;
        case cudaErrorLaunchMaxDepthExceeded:
       elName = "cudaErrorLaunchMaxDepthExceeded";
     break;
        case cudaErrorLaunchFileScopedTex:
       elName = "cudaErrorLaunchFileScopedTex";
     break;
        case cudaErrorLaunchFileScopedSurf:
       elName = "cudaErrorLaunchFileScopedSurf";
     break;
        case cudaErrorSyncDepthExceeded:
       elName = "cudaErrorSyncDepthExceeded";
     break;
        case cudaErrorLaunchPendingCountExceeded:
       elName = "cudaErrorLaunchPendingCountExceeded";
     break;
        case cudaErrorNotPermitted:
       elName = "cudaErrorNotPermitted";
     break;
        case cudaErrorNotSupported:
       elName = "cudaErrorNotSupported";
     break;
        case cudaErrorStartupFailure:
       elName = "cudaErrorStartupFailure";
     break;
        case cudaErrorApiFailureBase:
       elName = "cudaErrorApiFailureBase";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaError_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaError_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaOutputMode_t ( cudaOutputMode_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaKeyValuePair:
       elName = "cudaKeyValuePair";
     break;
        case cudaCSV:
       elName = "cudaCSV";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaOutputMode_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaOutputMode_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasStatus_t ( cublasStatus_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_STATUS_SUCCESS:
       elName = "CUBLAS_STATUS_SUCCESS";
     break;
        case CUBLAS_STATUS_NOT_INITIALIZED:
       elName = "CUBLAS_STATUS_NOT_INITIALIZED";
     break;
        case CUBLAS_STATUS_ALLOC_FAILED:
       elName = "CUBLAS_STATUS_ALLOC_FAILED";
     break;
        case CUBLAS_STATUS_INVALID_VALUE:
       elName = "CUBLAS_STATUS_INVALID_VALUE";
     break;
        case CUBLAS_STATUS_ARCH_MISMATCH:
       elName = "CUBLAS_STATUS_ARCH_MISMATCH";
     break;
        case CUBLAS_STATUS_MAPPING_ERROR:
       elName = "CUBLAS_STATUS_MAPPING_ERROR";
     break;
        case CUBLAS_STATUS_EXECUTION_FAILED:
       elName = "CUBLAS_STATUS_EXECUTION_FAILED";
     break;
        case CUBLAS_STATUS_INTERNAL_ERROR:
       elName = "CUBLAS_STATUS_INTERNAL_ERROR";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasStatus_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasStatus_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasFillMode_t ( cublasFillMode_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_FILL_MODE_LOWER:
       elName = "CUBLAS_FILL_MODE_LOWER";
     break;
        case CUBLAS_FILL_MODE_UPPER:
       elName = "CUBLAS_FILL_MODE_UPPER";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasFillMode_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasFillMode_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasDiagType_t ( cublasDiagType_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_DIAG_NON_UNIT:
       elName = "CUBLAS_DIAG_NON_UNIT";
     break;
        case CUBLAS_DIAG_UNIT:
       elName = "CUBLAS_DIAG_UNIT";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasDiagType_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasDiagType_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasSideMode_t ( cublasSideMode_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_SIDE_LEFT:
       elName = "CUBLAS_SIDE_LEFT";
     break;
        case CUBLAS_SIDE_RIGHT:
       elName = "CUBLAS_SIDE_RIGHT";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasSideMode_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasSideMode_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasPointerMode_t ( cublasPointerMode_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_POINTER_MODE_HOST:
       elName = "CUBLAS_POINTER_MODE_HOST";
     break;
        case CUBLAS_POINTER_MODE_DEVICE:
       elName = "CUBLAS_POINTER_MODE_DEVICE";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasPointerMode_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasPointerMode_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasOperation_t ( cublasOperation_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_OP_N:
       elName = "CUBLAS_OP_N";
     break;
        case CUBLAS_OP_T:
       elName = "CUBLAS_OP_T";
     break;
        case CUBLAS_OP_C:
       elName = "CUBLAS_OP_C";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasOperation_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasOperation_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cublasAtomicsMode_t ( cublasAtomicsMode_t  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case CUBLAS_ATOMICS_NOT_ALLOWED:
       elName = "CUBLAS_ATOMICS_NOT_ALLOWED";
     break;
        case CUBLAS_ATOMICS_ALLOWED:
       elName = "CUBLAS_ATOMICS_ALLOWED";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cublasAtomicsMode_t"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cublasAtomicsMode_t"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaRoundMode ( enum cudaRoundMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaRoundNearest:
       elName = "cudaRoundNearest";
     break;
        case cudaRoundZero:
       elName = "cudaRoundZero";
     break;
        case cudaRoundPosInf:
       elName = "cudaRoundPosInf";
     break;
        case cudaRoundMinInf:
       elName = "cudaRoundMinInf";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaRoundMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaRoundMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaChannelFormatKind ( enum cudaChannelFormatKind  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaChannelFormatKindSigned:
       elName = "cudaChannelFormatKindSigned";
     break;
        case cudaChannelFormatKindUnsigned:
       elName = "cudaChannelFormatKindUnsigned";
     break;
        case cudaChannelFormatKindFloat:
       elName = "cudaChannelFormatKindFloat";
     break;
        case cudaChannelFormatKindNone:
       elName = "cudaChannelFormatKindNone";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaChannelFormatKind"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaChannelFormatKind"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaMemoryType ( enum cudaMemoryType  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaMemoryTypeHost:
       elName = "cudaMemoryTypeHost";
     break;
        case cudaMemoryTypeDevice:
       elName = "cudaMemoryTypeDevice";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaMemoryType"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaMemoryType"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaMemcpyKind ( enum cudaMemcpyKind  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaMemcpyHostToHost:
       elName = "cudaMemcpyHostToHost";
     break;
        case cudaMemcpyHostToDevice:
       elName = "cudaMemcpyHostToDevice";
     break;
        case cudaMemcpyDeviceToHost:
       elName = "cudaMemcpyDeviceToHost";
     break;
        case cudaMemcpyDeviceToDevice:
       elName = "cudaMemcpyDeviceToDevice";
     break;
        case cudaMemcpyDefault:
       elName = "cudaMemcpyDefault";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaMemcpyKind"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaMemcpyKind"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
SEXP R_bitwise_enum_convert_cudaGraphicsRegisterFlags ( enum cudaGraphicsRegisterFlags val)
{
      return(
         R_bitwise_enum_convert(val, 
           (int []){
    	 cudaGraphicsRegisterFlagsNone,
		 cudaGraphicsRegisterFlagsReadOnly,
		 cudaGraphicsRegisterFlagsWriteDiscard,
		 cudaGraphicsRegisterFlagsSurfaceLoadStore,
		 cudaGraphicsRegisterFlagsTextureGather
            },
           (const char * const []){
    	 "cudaGraphicsRegisterFlagsNone",
		 "cudaGraphicsRegisterFlagsReadOnly",
		 "cudaGraphicsRegisterFlagsWriteDiscard",
		 "cudaGraphicsRegisterFlagsSurfaceLoadStore",
		 "cudaGraphicsRegisterFlagsTextureGather"
             }, 5 ,
    "cudaGraphicsRegisterFlags"
      ));
}
 
    SEXP Renum_convert_cudaLimit ( enum cudaLimit  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaLimitStackSize:
       elName = "cudaLimitStackSize";
     break;
        case cudaLimitPrintfFifoSize:
       elName = "cudaLimitPrintfFifoSize";
     break;
        case cudaLimitMallocHeapSize:
       elName = "cudaLimitMallocHeapSize";
     break;
        case cudaLimitDevRuntimeSyncDepth:
       elName = "cudaLimitDevRuntimeSyncDepth";
     break;
        case cudaLimitDevRuntimePendingLaunchCount:
       elName = "cudaLimitDevRuntimePendingLaunchCount";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaLimit"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaLimit"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaGraphicsMapFlags ( enum cudaGraphicsMapFlags  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaGraphicsMapFlagsNone:
       elName = "cudaGraphicsMapFlagsNone";
     break;
        case cudaGraphicsMapFlagsReadOnly:
       elName = "cudaGraphicsMapFlagsReadOnly";
     break;
        case cudaGraphicsMapFlagsWriteDiscard:
       elName = "cudaGraphicsMapFlagsWriteDiscard";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaGraphicsMapFlags"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaGraphicsMapFlags"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaFuncCache ( enum cudaFuncCache  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaFuncCachePreferNone:
       elName = "cudaFuncCachePreferNone";
     break;
        case cudaFuncCachePreferShared:
       elName = "cudaFuncCachePreferShared";
     break;
        case cudaFuncCachePreferL1:
       elName = "cudaFuncCachePreferL1";
     break;
        case cudaFuncCachePreferEqual:
       elName = "cudaFuncCachePreferEqual";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaFuncCache"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaFuncCache"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaGraphicsCubeFace ( enum cudaGraphicsCubeFace  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaGraphicsCubeFacePositiveX:
       elName = "cudaGraphicsCubeFacePositiveX";
     break;
        case cudaGraphicsCubeFaceNegativeX:
       elName = "cudaGraphicsCubeFaceNegativeX";
     break;
        case cudaGraphicsCubeFacePositiveY:
       elName = "cudaGraphicsCubeFacePositiveY";
     break;
        case cudaGraphicsCubeFaceNegativeY:
       elName = "cudaGraphicsCubeFaceNegativeY";
     break;
        case cudaGraphicsCubeFacePositiveZ:
       elName = "cudaGraphicsCubeFacePositiveZ";
     break;
        case cudaGraphicsCubeFaceNegativeZ:
       elName = "cudaGraphicsCubeFaceNegativeZ";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaGraphicsCubeFace"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaGraphicsCubeFace"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaSurfaceBoundaryMode ( enum cudaSurfaceBoundaryMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaBoundaryModeZero:
       elName = "cudaBoundaryModeZero";
     break;
        case cudaBoundaryModeClamp:
       elName = "cudaBoundaryModeClamp";
     break;
        case cudaBoundaryModeTrap:
       elName = "cudaBoundaryModeTrap";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaSurfaceBoundaryMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaSurfaceBoundaryMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaSharedMemConfig ( enum cudaSharedMemConfig  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaSharedMemBankSizeDefault:
       elName = "cudaSharedMemBankSizeDefault";
     break;
        case cudaSharedMemBankSizeFourByte:
       elName = "cudaSharedMemBankSizeFourByte";
     break;
        case cudaSharedMemBankSizeEightByte:
       elName = "cudaSharedMemBankSizeEightByte";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaSharedMemConfig"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaSharedMemConfig"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaSurfaceFormatMode ( enum cudaSurfaceFormatMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaFormatModeForced:
       elName = "cudaFormatModeForced";
     break;
        case cudaFormatModeAuto:
       elName = "cudaFormatModeAuto";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaSurfaceFormatMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaSurfaceFormatMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaResourceType ( enum cudaResourceType  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaResourceTypeArray:
       elName = "cudaResourceTypeArray";
     break;
        case cudaResourceTypeMipmappedArray:
       elName = "cudaResourceTypeMipmappedArray";
     break;
        case cudaResourceTypeLinear:
       elName = "cudaResourceTypeLinear";
     break;
        case cudaResourceTypePitch2D:
       elName = "cudaResourceTypePitch2D";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaResourceType"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaResourceType"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaTextureAddressMode ( enum cudaTextureAddressMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaAddressModeWrap:
       elName = "cudaAddressModeWrap";
     break;
        case cudaAddressModeClamp:
       elName = "cudaAddressModeClamp";
     break;
        case cudaAddressModeMirror:
       elName = "cudaAddressModeMirror";
     break;
        case cudaAddressModeBorder:
       elName = "cudaAddressModeBorder";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaTextureAddressMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaTextureAddressMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaResourceViewFormat ( enum cudaResourceViewFormat  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaResViewFormatNone:
       elName = "cudaResViewFormatNone";
     break;
        case cudaResViewFormatUnsignedChar1:
       elName = "cudaResViewFormatUnsignedChar1";
     break;
        case cudaResViewFormatUnsignedChar2:
       elName = "cudaResViewFormatUnsignedChar2";
     break;
        case cudaResViewFormatUnsignedChar4:
       elName = "cudaResViewFormatUnsignedChar4";
     break;
        case cudaResViewFormatSignedChar1:
       elName = "cudaResViewFormatSignedChar1";
     break;
        case cudaResViewFormatSignedChar2:
       elName = "cudaResViewFormatSignedChar2";
     break;
        case cudaResViewFormatSignedChar4:
       elName = "cudaResViewFormatSignedChar4";
     break;
        case cudaResViewFormatUnsignedShort1:
       elName = "cudaResViewFormatUnsignedShort1";
     break;
        case cudaResViewFormatUnsignedShort2:
       elName = "cudaResViewFormatUnsignedShort2";
     break;
        case cudaResViewFormatUnsignedShort4:
       elName = "cudaResViewFormatUnsignedShort4";
     break;
        case cudaResViewFormatSignedShort1:
       elName = "cudaResViewFormatSignedShort1";
     break;
        case cudaResViewFormatSignedShort2:
       elName = "cudaResViewFormatSignedShort2";
     break;
        case cudaResViewFormatSignedShort4:
       elName = "cudaResViewFormatSignedShort4";
     break;
        case cudaResViewFormatUnsignedInt1:
       elName = "cudaResViewFormatUnsignedInt1";
     break;
        case cudaResViewFormatUnsignedInt2:
       elName = "cudaResViewFormatUnsignedInt2";
     break;
        case cudaResViewFormatUnsignedInt4:
       elName = "cudaResViewFormatUnsignedInt4";
     break;
        case cudaResViewFormatSignedInt1:
       elName = "cudaResViewFormatSignedInt1";
     break;
        case cudaResViewFormatSignedInt2:
       elName = "cudaResViewFormatSignedInt2";
     break;
        case cudaResViewFormatSignedInt4:
       elName = "cudaResViewFormatSignedInt4";
     break;
        case cudaResViewFormatHalf1:
       elName = "cudaResViewFormatHalf1";
     break;
        case cudaResViewFormatHalf2:
       elName = "cudaResViewFormatHalf2";
     break;
        case cudaResViewFormatHalf4:
       elName = "cudaResViewFormatHalf4";
     break;
        case cudaResViewFormatFloat1:
       elName = "cudaResViewFormatFloat1";
     break;
        case cudaResViewFormatFloat2:
       elName = "cudaResViewFormatFloat2";
     break;
        case cudaResViewFormatFloat4:
       elName = "cudaResViewFormatFloat4";
     break;
        case cudaResViewFormatUnsignedBlockCompressed1:
       elName = "cudaResViewFormatUnsignedBlockCompressed1";
     break;
        case cudaResViewFormatUnsignedBlockCompressed2:
       elName = "cudaResViewFormatUnsignedBlockCompressed2";
     break;
        case cudaResViewFormatUnsignedBlockCompressed3:
       elName = "cudaResViewFormatUnsignedBlockCompressed3";
     break;
        case cudaResViewFormatUnsignedBlockCompressed4:
       elName = "cudaResViewFormatUnsignedBlockCompressed4";
     break;
        case cudaResViewFormatSignedBlockCompressed4:
       elName = "cudaResViewFormatSignedBlockCompressed4";
     break;
        case cudaResViewFormatUnsignedBlockCompressed5:
       elName = "cudaResViewFormatUnsignedBlockCompressed5";
     break;
        case cudaResViewFormatSignedBlockCompressed5:
       elName = "cudaResViewFormatSignedBlockCompressed5";
     break;
        case cudaResViewFormatUnsignedBlockCompressed6H:
       elName = "cudaResViewFormatUnsignedBlockCompressed6H";
     break;
        case cudaResViewFormatSignedBlockCompressed6H:
       elName = "cudaResViewFormatSignedBlockCompressed6H";
     break;
        case cudaResViewFormatUnsignedBlockCompressed7:
       elName = "cudaResViewFormatUnsignedBlockCompressed7";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaResourceViewFormat"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaResourceViewFormat"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaTextureFilterMode ( enum cudaTextureFilterMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaFilterModePoint:
       elName = "cudaFilterModePoint";
     break;
        case cudaFilterModeLinear:
       elName = "cudaFilterModeLinear";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaTextureFilterMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaTextureFilterMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaTextureReadMode ( enum cudaTextureReadMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaReadModeElementType:
       elName = "cudaReadModeElementType";
     break;
        case cudaReadModeNormalizedFloat:
       elName = "cudaReadModeNormalizedFloat";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaTextureReadMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaTextureReadMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaDeviceAttr ( enum cudaDeviceAttr  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaDevAttrMaxThreadsPerBlock:
       elName = "cudaDevAttrMaxThreadsPerBlock";
     break;
        case cudaDevAttrMaxBlockDimX:
       elName = "cudaDevAttrMaxBlockDimX";
     break;
        case cudaDevAttrMaxBlockDimY:
       elName = "cudaDevAttrMaxBlockDimY";
     break;
        case cudaDevAttrMaxBlockDimZ:
       elName = "cudaDevAttrMaxBlockDimZ";
     break;
        case cudaDevAttrMaxGridDimX:
       elName = "cudaDevAttrMaxGridDimX";
     break;
        case cudaDevAttrMaxGridDimY:
       elName = "cudaDevAttrMaxGridDimY";
     break;
        case cudaDevAttrMaxGridDimZ:
       elName = "cudaDevAttrMaxGridDimZ";
     break;
        case cudaDevAttrMaxSharedMemoryPerBlock:
       elName = "cudaDevAttrMaxSharedMemoryPerBlock";
     break;
        case cudaDevAttrTotalConstantMemory:
       elName = "cudaDevAttrTotalConstantMemory";
     break;
        case cudaDevAttrWarpSize:
       elName = "cudaDevAttrWarpSize";
     break;
        case cudaDevAttrMaxPitch:
       elName = "cudaDevAttrMaxPitch";
     break;
        case cudaDevAttrMaxRegistersPerBlock:
       elName = "cudaDevAttrMaxRegistersPerBlock";
     break;
        case cudaDevAttrClockRate:
       elName = "cudaDevAttrClockRate";
     break;
        case cudaDevAttrTextureAlignment:
       elName = "cudaDevAttrTextureAlignment";
     break;
        case cudaDevAttrGpuOverlap:
       elName = "cudaDevAttrGpuOverlap";
     break;
        case cudaDevAttrMultiProcessorCount:
       elName = "cudaDevAttrMultiProcessorCount";
     break;
        case cudaDevAttrKernelExecTimeout:
       elName = "cudaDevAttrKernelExecTimeout";
     break;
        case cudaDevAttrIntegrated:
       elName = "cudaDevAttrIntegrated";
     break;
        case cudaDevAttrCanMapHostMemory:
       elName = "cudaDevAttrCanMapHostMemory";
     break;
        case cudaDevAttrComputeMode:
       elName = "cudaDevAttrComputeMode";
     break;
        case cudaDevAttrMaxTexture1DWidth:
       elName = "cudaDevAttrMaxTexture1DWidth";
     break;
        case cudaDevAttrMaxTexture2DWidth:
       elName = "cudaDevAttrMaxTexture2DWidth";
     break;
        case cudaDevAttrMaxTexture2DHeight:
       elName = "cudaDevAttrMaxTexture2DHeight";
     break;
        case cudaDevAttrMaxTexture3DWidth:
       elName = "cudaDevAttrMaxTexture3DWidth";
     break;
        case cudaDevAttrMaxTexture3DHeight:
       elName = "cudaDevAttrMaxTexture3DHeight";
     break;
        case cudaDevAttrMaxTexture3DDepth:
       elName = "cudaDevAttrMaxTexture3DDepth";
     break;
        case cudaDevAttrMaxTexture2DLayeredWidth:
       elName = "cudaDevAttrMaxTexture2DLayeredWidth";
     break;
        case cudaDevAttrMaxTexture2DLayeredHeight:
       elName = "cudaDevAttrMaxTexture2DLayeredHeight";
     break;
        case cudaDevAttrMaxTexture2DLayeredLayers:
       elName = "cudaDevAttrMaxTexture2DLayeredLayers";
     break;
        case cudaDevAttrSurfaceAlignment:
       elName = "cudaDevAttrSurfaceAlignment";
     break;
        case cudaDevAttrConcurrentKernels:
       elName = "cudaDevAttrConcurrentKernels";
     break;
        case cudaDevAttrEccEnabled:
       elName = "cudaDevAttrEccEnabled";
     break;
        case cudaDevAttrPciBusId:
       elName = "cudaDevAttrPciBusId";
     break;
        case cudaDevAttrPciDeviceId:
       elName = "cudaDevAttrPciDeviceId";
     break;
        case cudaDevAttrTccDriver:
       elName = "cudaDevAttrTccDriver";
     break;
        case cudaDevAttrMemoryClockRate:
       elName = "cudaDevAttrMemoryClockRate";
     break;
        case cudaDevAttrGlobalMemoryBusWidth:
       elName = "cudaDevAttrGlobalMemoryBusWidth";
     break;
        case cudaDevAttrL2CacheSize:
       elName = "cudaDevAttrL2CacheSize";
     break;
        case cudaDevAttrMaxThreadsPerMultiProcessor:
       elName = "cudaDevAttrMaxThreadsPerMultiProcessor";
     break;
        case cudaDevAttrAsyncEngineCount:
       elName = "cudaDevAttrAsyncEngineCount";
     break;
        case cudaDevAttrUnifiedAddressing:
       elName = "cudaDevAttrUnifiedAddressing";
     break;
        case cudaDevAttrMaxTexture1DLayeredWidth:
       elName = "cudaDevAttrMaxTexture1DLayeredWidth";
     break;
        case cudaDevAttrMaxTexture1DLayeredLayers:
       elName = "cudaDevAttrMaxTexture1DLayeredLayers";
     break;
        case cudaDevAttrMaxTexture2DGatherWidth:
       elName = "cudaDevAttrMaxTexture2DGatherWidth";
     break;
        case cudaDevAttrMaxTexture2DGatherHeight:
       elName = "cudaDevAttrMaxTexture2DGatherHeight";
     break;
        case cudaDevAttrMaxTexture3DWidthAlt:
       elName = "cudaDevAttrMaxTexture3DWidthAlt";
     break;
        case cudaDevAttrMaxTexture3DHeightAlt:
       elName = "cudaDevAttrMaxTexture3DHeightAlt";
     break;
        case cudaDevAttrMaxTexture3DDepthAlt:
       elName = "cudaDevAttrMaxTexture3DDepthAlt";
     break;
        case cudaDevAttrPciDomainId:
       elName = "cudaDevAttrPciDomainId";
     break;
        case cudaDevAttrTexturePitchAlignment:
       elName = "cudaDevAttrTexturePitchAlignment";
     break;
        case cudaDevAttrMaxTextureCubemapWidth:
       elName = "cudaDevAttrMaxTextureCubemapWidth";
     break;
        case cudaDevAttrMaxTextureCubemapLayeredWidth:
       elName = "cudaDevAttrMaxTextureCubemapLayeredWidth";
     break;
        case cudaDevAttrMaxTextureCubemapLayeredLayers:
       elName = "cudaDevAttrMaxTextureCubemapLayeredLayers";
     break;
        case cudaDevAttrMaxSurface1DWidth:
       elName = "cudaDevAttrMaxSurface1DWidth";
     break;
        case cudaDevAttrMaxSurface2DWidth:
       elName = "cudaDevAttrMaxSurface2DWidth";
     break;
        case cudaDevAttrMaxSurface2DHeight:
       elName = "cudaDevAttrMaxSurface2DHeight";
     break;
        case cudaDevAttrMaxSurface3DWidth:
       elName = "cudaDevAttrMaxSurface3DWidth";
     break;
        case cudaDevAttrMaxSurface3DHeight:
       elName = "cudaDevAttrMaxSurface3DHeight";
     break;
        case cudaDevAttrMaxSurface3DDepth:
       elName = "cudaDevAttrMaxSurface3DDepth";
     break;
        case cudaDevAttrMaxSurface1DLayeredWidth:
       elName = "cudaDevAttrMaxSurface1DLayeredWidth";
     break;
        case cudaDevAttrMaxSurface1DLayeredLayers:
       elName = "cudaDevAttrMaxSurface1DLayeredLayers";
     break;
        case cudaDevAttrMaxSurface2DLayeredWidth:
       elName = "cudaDevAttrMaxSurface2DLayeredWidth";
     break;
        case cudaDevAttrMaxSurface2DLayeredHeight:
       elName = "cudaDevAttrMaxSurface2DLayeredHeight";
     break;
        case cudaDevAttrMaxSurface2DLayeredLayers:
       elName = "cudaDevAttrMaxSurface2DLayeredLayers";
     break;
        case cudaDevAttrMaxSurfaceCubemapWidth:
       elName = "cudaDevAttrMaxSurfaceCubemapWidth";
     break;
        case cudaDevAttrMaxSurfaceCubemapLayeredWidth:
       elName = "cudaDevAttrMaxSurfaceCubemapLayeredWidth";
     break;
        case cudaDevAttrMaxSurfaceCubemapLayeredLayers:
       elName = "cudaDevAttrMaxSurfaceCubemapLayeredLayers";
     break;
        case cudaDevAttrMaxTexture1DLinearWidth:
       elName = "cudaDevAttrMaxTexture1DLinearWidth";
     break;
        case cudaDevAttrMaxTexture2DLinearWidth:
       elName = "cudaDevAttrMaxTexture2DLinearWidth";
     break;
        case cudaDevAttrMaxTexture2DLinearHeight:
       elName = "cudaDevAttrMaxTexture2DLinearHeight";
     break;
        case cudaDevAttrMaxTexture2DLinearPitch:
       elName = "cudaDevAttrMaxTexture2DLinearPitch";
     break;
        case cudaDevAttrMaxTexture2DMipmappedWidth:
       elName = "cudaDevAttrMaxTexture2DMipmappedWidth";
     break;
        case cudaDevAttrMaxTexture2DMipmappedHeight:
       elName = "cudaDevAttrMaxTexture2DMipmappedHeight";
     break;
        case cudaDevAttrComputeCapabilityMajor:
       elName = "cudaDevAttrComputeCapabilityMajor";
     break;
        case cudaDevAttrComputeCapabilityMinor:
       elName = "cudaDevAttrComputeCapabilityMinor";
     break;
        case cudaDevAttrMaxTexture1DMipmappedWidth:
       elName = "cudaDevAttrMaxTexture1DMipmappedWidth";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaDeviceAttr"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaDeviceAttr"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
    SEXP Renum_convert_cudaComputeMode ( enum cudaComputeMode  val)
    {
    const char *elName = NULL;
    SEXP klass, ans;
    switch(val) {
        case cudaComputeModeDefault:
       elName = "cudaComputeModeDefault";
     break;
        case cudaComputeModeExclusive:
       elName = "cudaComputeModeExclusive";
     break;
        case cudaComputeModeProhibited:
       elName = "cudaComputeModeProhibited";
     break;
        case cudaComputeModeExclusiveProcess:
       elName = "cudaComputeModeExclusiveProcess";
     break;
        default:
    	elName = "?";
    	}


    #if defined(USE_S4_ENUMS)
    
    SEXP tmp
    PROTECT(klass = MAKE_CLASS("cudaComputeMode"));
    PROTECT(ans = NEW(klass));
    PROTECT(tmp = ScalarInteger(val));
    SET_NAMES(tmp, mkString(elName));
    ans = SET_SLOT(ans, Rf_install(".Data"), tmp);
    UNPROTECT(3);
    
    #else
    
    PROTECT(ans = ScalarInteger(val));
    SET_NAMES(ans, mkString(elName));
    PROTECT(klass = NEW_CHARACTER(2));
    SET_STRING_ELT(klass, 0, mkChar("cudaComputeMode"));
    SET_STRING_ELT(klass, 1, mkChar("EnumValue"));
    SET_CLASS(ans, klass);
    UNPROTECT(2);
    
    #endif
    
    return(ans);
    
}
 
