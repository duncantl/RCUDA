#include "RCUDA.h"


SEXP R_cudaGetLastError();

SEXP
R_cudaErrorInfo(CUresult val)
{
    SEXP ans;
    PROTECT(ans = ScalarInteger(val));
    SET_CLASS(ans, mkString("CUresult"));
    SET_NAMES(ans, R_cudaGetLastError());
    UNPROTECT(1);
    return(ans);
}


SEXP
R_cudaError_t_Info(cudaError_t val)
{
    SEXP ans;
    PROTECT(ans = ScalarInteger(val));
    SET_CLASS(ans, mkString("cudaError_t"));
//???
    SET_NAMES(ans, R_cudaGetLastError());
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
R_manual_cudaMemcpy(SEXP r_src,  SEXP r_ptr, SEXP r_elSize)
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
      elSize = INTEGER(r_elSize)[0];
      if(elSize == 8)
	data = REAL(r_src);
      else {
        elSize = 4;
	float *fl = (float *) R_alloc(len, elSize);
	for(i = 0; i < len; i++)
	    fl[i] = REAL(r_src)[i];
	  data = fl;
      }
    }
          break;
    default:
	 PROBLEM "don't know what to do"
	     ERROR;

    }

    cudaError_t status = cudaMemcpy(ptr, data, elSize * len, cudaMemcpyHostToDevice);
    if(status)
	return(R_cudaError_t_Info(status));

    return(ans);
}

int
isRCReference(SEXP obj)
{
    return(IS_S4_OBJECT(obj)); //XXX check the class
}

void *
convertRObjToGPU(SEXP arg, float *floatLoc, void **argLoc, int numericAsDouble)
{

    if(isRCReference(arg)) {
	arg = GET_SLOT(arg, Rf_install("ref"));
    }

    int ty = TYPEOF(arg);

    if(ty == EXTPTRSXP) {
        argLoc[0] = R_ExternalPtrAddr(arg);
	return(argLoc);
    }

    if(arg == R_NilValue) {
	argLoc[0] = NULL;
	return(argLoc);
    }

    int len = Rf_length(arg), i;
    if(ty == REALSXP) {
	if(len == 1) {
	  if(numericAsDouble) {
	    return(REAL(arg));
	  } else {
	    *floatLoc =  REAL(arg)[0];
	    return(floatLoc);
	  }
	}

	float *fl = (float *) malloc(len * sizeof(float));
	float *gpu_fl;
	for(i = 0 ; i < len; i++)
	    fl[i] = REAL(arg)[i];
	cudaError_t status = cudaMalloc((void **)  &gpu_fl, len * sizeof(float));
	if(status) {
	    PROBLEM "cannot allocate memory on the GPU %d", status
		ERROR;
	}
	status = cudaMemcpy(gpu_fl, fl, len * sizeof(float),  cudaMemcpyHostToDevice);
	if(status) {
	    if(gpu_fl) 
               cudaFree(gpu_fl);
	    PROBLEM "cannot copy memory on the GPU %d", status
		ERROR;
	}

    } else if(ty == INTSXP) {
        if(len == 1) 
	    return(INTEGER(arg));

	int *gpu_int = NULL;
	void *p;
	cudaError_t status = cudaMalloc((void **)  &p, len * sizeof(int));
	if(status) {
	    PROBLEM "cannot allocate memory on the GPU %d", status
		ERROR;
	}
	gpu_int = (int *) p;
	status = cudaMemcpy(gpu_int, INTEGER(arg), len * sizeof(int),  cudaMemcpyHostToDevice);	
	if(status) {
	    if(p)
               cudaFree(p);
	    PROBLEM "cannot copy memory on the GPU %d", status
		ERROR;
	}
	return(gpu_int);
    }

    return(NULL);
}



SEXP
R_cuLaunchKernel(SEXP r_fun, SEXP r_gridDims, SEXP r_blockDims, SEXP r_args, SEXP r_sharedMemBytes, SEXP r_stream, SEXP r_numericAsDouble)
{

    SEXP ans = R_NilValue;
    int *gridDims, *blockDims;
    gridDims = INTEGER(r_gridDims);
    blockDims = INTEGER(r_blockDims);
    CUfunction fun = (CUfunction) getRReference(r_fun); // was  GET_REF(r_fun, CUfunction) but about to change GET_REF.
    CUstream stream = NULL;

    int nargs = Rf_length(r_args), i;
    int *numericAsDouble = LOGICAL(r_numericAsDouble);

      //XXX if we do an asynchronous launch, then this memory will disappear when we exit this call and the code is still running.
#if 1
    void **args, **args2; //set from r_args
    args = (void **) R_alloc(nargs, sizeof(void*));  
    args2 = (void **) R_alloc(nargs, sizeof(void*)); 
    float *floats = (float *) R_alloc(nargs, sizeof(float)); 
    for(i = 0; i < nargs; i++) {
	SEXP arg = VECTOR_ELT(r_args, i);
	args[i] = args2[i] = NULL;
	/* If we have a scalar, we pass the address of that scalar. 
           For a REAL, we have to put it into a float and use the address of that float */
	args[i] = convertRObjToGPU(arg, floats + i, args2 + i, numericAsDouble[i]);
	//	fprintf(stderr, "arg %d = %p     (%p)\n", i, args[i], args2[i]);
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

    if(Rf_length(r_stream))
      stream = (CUstream) getRReference(r_stream);

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
    CUmodule mod = (CUmodule) getRReference(r_module); //XX was GET_REF(r_module, CUmodule);
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
   CUresult status = cuCtxCreate(&ctxt, INTEGER(r_flags)[0], INTEGER(r_dev)[0]);
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
    cudaError_t status = cudaMalloc(&ptr, REAL(r_numBytes)[0]);
    if(status) {
	return(R_cudaError_t_Info(status));
    }
    return(R_createReference(ptr, "cudaPtr", "cudaPtr", R_cudaFree));
}


SEXP
R_cudaSetDevice(SEXP r_dev)
{
    cudaError_t status = cudaSetDevice(INTEGER(r_dev)[0]);
    return(R_cudaErrorInfo(status));
}


SEXP
R_cuInit(SEXP r_flags, SEXP r_asCUresult)
{
    CUresult status = cuInit(INTEGER(r_flags)[0]);
    return(LOGICAL(r_asCUresult)[0] ? Renum_convert_CUresult(status) : ScalarInteger(status));
}



SEXP
R_cuGetVersion()
{
  SEXP ans = NEW_INTEGER(2);
  int version;
  cudaError_t status = cudaDriverGetVersion(&version);
  INTEGER(ans)[0] = version;
  status = cudaRuntimeGetVersion(&version);
  INTEGER(ans)[1] = version;
  return(ans);
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
R_getCudaIntVector(SEXP r_ptr, SEXP r_len)
{
    int len = INTEGER(r_len)[0];
    SEXP ans = NEW_INTEGER(len);
    void *ptr = getRReference(r_ptr);

    cudaError_t status = cudaMemcpy(INTEGER(ans), ptr, len * sizeof(int), cudaMemcpyDeviceToHost);
    if(status) 
	return(R_cudaError_t_Info(status));

    return(ans);
}

SEXP
R_getCudaDoubleVector(SEXP r_ptr, SEXP r_len)
{
    int len = INTEGER(r_len)[0];
    SEXP ans = NEW_NUMERIC(len);
    void *ptr = getRReference(r_ptr);

    cudaError_t status = cudaMemcpy(REAL(ans), ptr, len * sizeof(double), cudaMemcpyDeviceToHost);
    if(status) 
	return(R_cudaError_t_Info(status));

    return(ans);
}


SEXP
R_getCudaFloatVector(SEXP r_ptr, SEXP r_len, SEXP r_indices)
{
    int len = INTEGER(r_len)[0];
    SEXP ans;
    void *ptr = getRReference(r_ptr);

    float *fl = (float *) R_alloc(len, sizeof(float));
    if(!fl) {
      PROBLEM "cannot allocate space for the array of %d floats", len
      ERROR;
    }

    cudaError_t status = cudaMemcpy(fl, ptr, len * sizeof(int), cudaMemcpyDeviceToHost);
    if(status) 
	return(R_cudaError_t_Info(status));

    
    if(Rf_length(r_indices)) {
	len = Rf_length(r_indices);
	ans = NEW_NUMERIC(len);
	for(int i = 0; i < len; i++) {
	    REAL(ans)[i] = fl[ INTEGER(r_indices)[i]  ];
	}
    } else {
	ans = NEW_NUMERIC(len);
	for(int i = 0; i < len; i++)
	    REAL(ans)[i] = fl[i];
    }

    return(ans);
}



SEXP
R_cudaGetLastError()
{
    cudaError_t err = cudaGetLastError();
    const char *str = cudaGetErrorString(err);
    return(mkString(str ? str : ""));
}

#include <cudaProfiler.h>

SEXP
R_cudaProfilerToggle(SEXP r_start)
{
    CUresult status;

    status =  LOGICAL(r_start)[0] ? cuProfilerStart() : cuProfilerStop();
    if(status) 
	return(R_cudaErrorInfo(status));

    return(ScalarInteger(status));
}

SEXP
R_cudaProfilerInitialize(SEXP r_config, SEXP r_file, SEXP r_fmt)
{
    const char *config = Rf_length(r_config) ? CHAR(STRING_ELT(r_config, 0)) : NULL;
    CUresult status = cuProfilerInitialize(config, CHAR(STRING_ELT(r_file, 0)), INTEGER(r_fmt)[0]);
    if(status) 
	return(R_cudaErrorInfo(status));

    return(ScalarInteger(status));
}



SEXP
R_cuMemGetInfo()
{
    size_t free;  
    size_t total;  
    CUresult status = cuMemGetInfo(&free, &total);  

    if(status)
	return(R_cudaErrorInfo(status));
    SEXP ans = NEW_NUMERIC(2);
    REAL(ans)[0] = free;
    REAL(ans)[1] = total;
    return(ans);
}





#if 0  				/* Now in context.c */
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
R_cuCtxGetCurrent(SEXP r_asContext)
{
  CUcontext ctx = NULL;
  CUresult status = cuCtxGetCurrent(&ctx);
  if(status) 
      return(ScalarInteger(status));
  
  if(!ctx)
      return(R_NilValue);

  return(R_createRef(ctx, "CUcontext"))
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

#endif

/* Test to see if this doesn't work in C code either!, i.e the auto-generated R code gives the same error. 
Seems to! 
*/
SEXP
R_test_cuCtxGetLimit()
{
    CUcontext ctx;
    CUresult status = cuCtxGetCurrent(&ctx);
    if(status) {
	PROBLEM "can't get current %s", cudaGetErrorString(cudaGetLastError())
	    ERROR;
    }
    size_t size;
    status = cuCtxGetLimit(&size, CU_LIMIT_STACK_SIZE);
    if(status) {
	PROBLEM "can't get limit: %s", cudaGetErrorString(cudaGetLastError())
	    ERROR;
    }
    return(ScalarReal(size));
}




SEXP
R_cuModuleLoadDataEx(SEXP r_image, SEXP r_Options, SEXP retOpts)
{
    SEXP r_ans = R_NilValue;
    CUmodule module;


    const void * image;
    if(TYPEOF(r_image) == RAWSXP)
	image = RAW(r_image);
    else 
	image = (void *) CHAR(STRING_ELT(r_image, 0));
    
    unsigned int numOptions = Rf_length(r_Options);
    CUresult ans;

    ans = cuModuleLoadDataEx( &module, image, numOptions, (enum CUjit_option_enum *) INTEGER(r_Options), NULL);

    if(ans)
       return(R_cudaErrorInfo(ans));

    r_ans = R_createRef(module, "CUmodule");

    return(r_ans);
}


SEXP
R_cudaThreadSynchronize()
{
  cudaError_t ans = cudaThreadSynchronize();
  return(Renum_convert_cudaError_t(ans));
}


/* To bypass the seg fault in CUDA SDK 5.5 when we unload the DLL w/o having done much. */
void
R_initForCUDAFiveFive()
{
  CUcontext ctxt;
  cuCtxCreate(&ctxt, 0L, 0L);
  void *f;
  cudaMalloc(&f, 4);
}
