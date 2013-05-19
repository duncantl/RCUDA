 SEXP R_copyStruct_cudaPos ( struct  cudaPos   *value) ; 
 SEXP R_copyStruct_cudaPitchedPtr ( struct  cudaPitchedPtr   *value) ; 
 SEXP R_copyStruct_cudaExtent ( struct  cudaExtent   *value) ; 
 struct  cudaPos *   coerce_cudaPos_cudaPosPtr ( SEXP r_from,  struct  cudaPos * ans  ) ; 
 struct  cudaPitchedPtr *   coerce_cudaPitchedPtr_cudaPitchedPtrPtr ( SEXP r_from,  struct  cudaPitchedPtr * ans  ) ; 
 struct  cudaExtent *   coerce_cudaExtent_cudaExtentPtr ( SEXP r_from,  struct  cudaExtent * ans  ) ; 


SEXP Renum_convert_CUarray_format_enum(enum CUarray_format_enum);
SEXP R_copyStruct_CUDA_ARRAY3D_DESCRIPTOR_st(struct CUDA_ARRAY3D_DESCRIPTOR_st *obj);
SEXP R_copyStruct_CUDA_ARRAY_DESCRIPTOR_st(struct CUDA_ARRAY_DESCRIPTOR_st *obj);


#define Renum_convert_cudaError Renum_convert_cudaError_t
#define Renum_convert_cudaError_enum Renum_convert_cudaError_t

