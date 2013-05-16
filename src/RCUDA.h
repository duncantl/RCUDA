#ifndef RCUDA_H
#define RCUDA_H

#include <cuda.h>
#include <cuda_runtime_api.h>


#include<cublas.h>
#include<cublas_api.h>

#include <Rdefines.h>

#include "RConverters.h"
#include "RError.h"

#include "declarations.h"
#include "enumDecls.h"
#include "manualDecls.h"


void *getRReference(SEXP val);
SEXP R_createReference(const void *ptr, const char * const className, const char * tag, R_CFinalizer_t finalizer);

#define R_createRef(val, type)  R_createReference(val, type, type, NULL)

#define GET_REF(val, type) \
    (type) (getRReference(val))



SEXP R_cudaErrorInfo(CUresult val);

#endif


