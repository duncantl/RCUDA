#ifndef RCUDA_H
#define RCUDA_H

#include <cuda.h>
#include <cuda_runtime_api.h>


#include<cublas.h>
#include<cublas_api.h>

#include <Rdefines.h>

#define R_createRef(val, type)  R_createReference(val, type, type, NULL)
//temporarily rename
#define xGET_REF(val, type) \
    (type) (getRReference(val))

#include "RConverters.h"
#include "RError.h"

#include "declarations.h"
#include "enumDecls.h"
#include "structCopyDecls.h"
#include "manualDecls.h"


void *getRReference(SEXP val);
SEXP R_createReference(const void *ptr, const char * const className, const char * tag, R_CFinalizer_t finalizer);




SEXP R_cudaErrorInfo(CUresult val);
SEXP R_cudaError_t_Info(cudaError_t val);

#endif


