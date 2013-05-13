#include "RCUDA.h"

SEXP
R_cudaErrorInfo(CUresult val)
{
    SEXP ans;
    PROTECT(ans = ScalarInteger(val));
    SET_CLASS(ans, mkString("CUresult"));
    UNPROTECT(1);
    return(ans);
}


/* 
 We want this to be a high-level routine that can allocate space 
 in the appropriate device and then make the copy.
 Potentially, we should put information about the size and type 
 on the return value so that we can recover the data when we want
 to copy it back.
 */
SEXP
R_cudaMemcpy(SEXP r_src,  SEXP r_ptr)
{
    SEXP ans = R_NilValue;
    void *ptr = getRReference(r_ptr);
    void *data;
    size_t elSize;

    int len = Rf_length(r_src), i;

    switch(TYPEOF(r_src)) {
      case LGLSXP:
      case INTSXP:
	  elSize = 4;
	  data = INTEGER(r_src);
	  break;
    case REALSXP:
    {
	elSize = 4;
	float *fl = (float *) R_alloc(len, elSize);
	for(i = 0; i < len; i++)
	    fl[i] = REAL(r_src)[i];
	  data = fl;
    }
          break;
    default:
	 PROBLEM "don't know what to do"
	     ERROR;

    }

    CUresult status = cudaMemcpy(ptr, data, elSize * len, cudaMemcpyHostToDevice);
    if(status)
	return(R_cudaErrorInfo(status));

    return(ans);
}

void *
convertRObjToGPU(SEXP arg, float *floatLoc, void **argLoc)
{
    int ty = TYPEOF(arg);
    if(ty == EXTPTRSXP) {
        argLoc[0] =  R_ExternalPtrAddr(arg);
	return(argLoc);
    }

    int len = Rf_length(arg), i;
    if(ty == REALSXP) {
	if(len == 1) {
	    *floatLoc =  REAL(arg)[0];
	    return(floatLoc);
	}

	float *fl = (float *) malloc(len * sizeof(float));
	float *gpu_fl;
	for(i = 0 ; i < len; i++)
	    fl[i] = REAL(arg)[i];
	CUresult status = cudaMalloc((void **)  &gpu_fl, len * sizeof(float));
	if(status) {
	    PROBLEM "cannot allocate memory on the GPU %d", status
		ERROR;
	}
	cudaMemcpy(gpu_fl, fl, len * sizeof(float),  cudaMemcpyHostToDevice);

    } else if(ty == INTSXP) {
	if(len == 1)
	    return(INTEGER(arg));
	int *gpu_int = NULL;
	void *p;
	CUresult status = cudaMalloc((void **)  &p, len * sizeof(int));
	if(status) {
	    PROBLEM "cannot allocate memory on the GPU %d", status
		ERROR;
	}
	gpu_int = (int *) p;
	cudaMemcpy(gpu_int, INTEGER(arg), len * sizeof(int),  cudaMemcpyHostToDevice);	
	return(gpu_int);
    }

    return(NULL);
}



SEXP
R_cuLaunchKernel(SEXP r_fun, SEXP r_gridDims, SEXP r_blockDims, SEXP r_args, SEXP r_sharedMemBytes, SEXP r_stream)
{

    SEXP ans = R_NilValue;
    int *gridDims, *blockDims;
    gridDims = INTEGER(r_gridDims);
    blockDims = INTEGER(r_blockDims);
    CUfunction fun = GET_REF(r_fun, CUfunction);
    CUstream stream = NULL;

    int nargs = Rf_length(r_args), i;
         //XXX if we do an asynchronous launch, then this memory will disappear when we exit this call and the code is still running.
#if 1
    void **args, **args2; //set from r_args
    args = (void **) R_alloc(nargs, sizeof(void*));  
    args2 = (void **) R_alloc(nargs, sizeof(void*)); 
    float *floats = (float *) R_alloc(nargs, sizeof(float)); 
    for(i = 0; i < nargs; i++) {
	SEXP arg = VECTOR_ELT(r_args, i);
	/* If we have a scalar, we pass the address of that scalar. For a REAL, we have to put it into a float and use the address of that float */
	args[i] = convertRObjToGPU(arg, floats + i, args2 + i);
//	fprintf(stderr, "arg %d = %p, %p\n", i, args[i], args2[i]);
    }
#else
    void *args[4];
    void *tmp;
    float fl[2];
    tmp = R_ExternalPtrAddr(VECTOR_ELT(r_args, 0));
    args[0] = &tmp;
    args[1] = INTEGER(VECTOR_ELT(r_args, 1));
    fl[0] = REAL(VECTOR_ELT(r_args, 2))[0];
    args[2] = fl;
    fl[1] = REAL(VECTOR_ELT(r_args, 3))[0];
    args[3] = fl + 1;

#endif

    CUresult status = cuLaunchKernel(fun, gridDims[0], gridDims[1], gridDims[2], blockDims[0], blockDims[1], blockDims[2], INTEGER(r_sharedMemBytes)[0], stream, args, NULL);
    if(status != CUDA_SUCCESS) {
	PROBLEM "error launching CUDA kernel %d", status
           ERROR;
    }    
    return(ans);
}


SEXP 
R_loadModule(SEXP r_filename)
{
   CUmodule mod;
   CUresult status =  cuModuleLoad(&mod, CHAR(STRING_ELT(r_filename, 0)));
    if(status != CUDA_SUCCESS) {
	return(ScalarInteger(status));
//	PROBLEM "failed to load module %d", status
//	ERROR;

    }
    return(R_createRef(mod, "CUmodule"));
}

SEXP
R_Module_getFunction(SEXP r_module, SEXP r_name)
{
    CUmodule mod = GET_REF(r_module, CUmodule);
    CUfunction func;
    CUresult status = cuModuleGetFunction(&func, mod, CHAR(STRING_ELT(r_name, 0)));
    if(status != CUDA_SUCCESS) {
	return(ScalarInteger(status));
//	PROBLEM "failed to find function %s in module", CHAR(STRING_ELT(r_name, 0))
//	ERROR;
    }
    return(R_createRef(func, "CUfunction"));
}




SEXP 
R_createContext(SEXP r_flags, SEXP r_dev)
{
   CUcontext ctxt;
   CUresult status =  cuCtxCreate(&ctxt, INTEGER(r_flags)[0], INTEGER(r_dev)[0]);
    if(status != CUDA_SUCCESS) {
	return(ScalarInteger(status));

    }
    return(R_createRef(ctxt, "CUcontext"));
}


#if 0
SEXP
R_test(SEXP r_func)
{

    int grid[3] = {7, 1, 1};
    int block[3] = {10, 1, 1};
    void *args[2];
//    cuLaunchKernel(fun, )
    return(R_NilValue);
}
#endif


void
R_cudaFree(SEXP obj)
{
    void *ptr =  R_ExternalPtrAddr(obj);
    if(ptr) {
	cudaFree(ptr);
	R_SetExternalPtrAddr(obj, NULL);
    }
}


SEXP 
R_cudaMalloc(SEXP r_numBytes)
{
    void *ptr = NULL;
    CUresult status = cudaMalloc(&ptr, INTEGER(r_numBytes)[0]);
    if(status) {
	return(ScalarInteger(status));
    }
    SEXP ans  = R_MakeExternalPtr( ptr, Rf_install("cudaPtr"), R_NilValue);
//Finalizer
    R_RegisterCFinalizer(ans, R_cudaFree);
    return(ans);
}



SEXP 
R_cuDeviceGet(SEXP which)
{
    CUdevice cu_device;
    CUresult err = cuDeviceGet(&cu_device, INTEGER(which)[0]);
    if(err) {
	PROBLEM "problem getting device"
	    ERROR;
    }
    return(ScalarInteger(cu_device));
}


SEXP
R_cudaSetDevice(SEXP r_dev)
{
    CUresult status = cudaSetDevice(INTEGER(r_dev)[0]);
    return(ScalarInteger(status));
}


SEXP
R_cuInit(SEXP r_flags)
{
    CUresult status = cuInit(INTEGER(r_flags)[0]);
    return(ScalarInteger(status));
}


SEXP
R_cuCtxGetCurrent()
{
  CUcontext ctx = NULL;
  CUresult status = cuCtxGetCurrent(&ctx);
  if(status) 
      return(ScalarInteger(status));
  
  if(!ctx)
      return(R_NilValue);

  return(R_createRef(ctx, "CUcontext"));  
}


SEXP
R_cuDriverGetVersion()
{
  int version = 0;
  CUresult status =  cuDriverGetVersion(&version);
  if(status) {
      PROBLEM "can't get cuda driver version %d", status
        ERROR;
  }
  return(ScalarInteger(version));
}



SEXP
R_cuCtxDestroy(SEXP r_ctx)
{
    if(TYPEOF(r_ctx) == EXTPTRSXP) {
	r_ctx = GET_SLOT(r_ctx, Rf_install("ref"));
    }

    CUcontext ctx = (CUcontext) R_ExternalPtrAddr(r_ctx);
    if(ctx) {
	cuCtxDestroy(ctx);
	R_SetExternalPtrAddr(r_ctx, NULL);
    }
    return(R_NilValue);
}


SEXP
R_getCudaIntVector(SEXP r_ptr, SEXP r_len)
{
    int len = INTEGER(r_len)[0];
    SEXP ans = NEW_INTEGER(len);
    void *ptr = getRReference(r_ptr);

    CUresult status = cudaMemcpy(INTEGER(ans), ptr, len * sizeof(int), cudaMemcpyDeviceToHost);
    if(status) 
	return(R_cudaErrorInfo(status));

    return(ans);
}


SEXP
R_getCudaFloatVector(SEXP r_ptr, SEXP r_len)
{
    int len = INTEGER(r_len)[0];
    SEXP ans;
    void *ptr = getRReference(r_ptr);


    float *fl = (float *) R_alloc(len, sizeof(float));
    if(!fl) {
	PROBLEM "..." ERROR;
    }

    CUresult status = cudaMemcpy(fl, ptr, len * sizeof(int), cudaMemcpyDeviceToHost);
    if(status) 
	return(R_cudaErrorInfo(status));

    ans = NEW_NUMERIC(len);
    for(int i = 0; i < len; i++)
	REAL(ans)[i] = fl[i];

    return(ans);
}





