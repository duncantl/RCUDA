// Generated programmatically at 2016-07-17 12:39:47 
#include "RCUDA.h"


SEXP
R_copyStruct_CUDA_ARRAY_DESCRIPTOR_st(struct CUDA_ARRAY_DESCRIPTOR_st *obj)
{
    int i = 0;
    SEXP r_ans, r_names;
    PROTECT(r_ans = NEW_LIST(4));
    PROTECT(r_names = NEW_CHARACTER(4));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Width));
    SET_STRING_ELT(r_names, i++, mkChar("Width"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Height));
    SET_STRING_ELT(r_names, i++, mkChar("Height"));
    SET_VECTOR_ELT(r_ans, i, Renum_convert_CUarray_format_enum(obj->Format));
    SET_STRING_ELT(r_names, i++, mkChar("Format"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->NumChannels));
    SET_STRING_ELT(r_names, i++, mkChar("NumChannels"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}


SEXP
R_copyStruct_CUDA_ARRAY3D_DESCRIPTOR_st(struct CUDA_ARRAY3D_DESCRIPTOR_st *obj)
{
    int i = 0;
    SEXP r_ans, r_names;
    PROTECT(r_ans = NEW_LIST(6));
    PROTECT(r_names = NEW_CHARACTER(6));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Width));
    SET_STRING_ELT(r_names, i++, mkChar("Width"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Height));
    SET_STRING_ELT(r_names, i++, mkChar("Height"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Depth));
    SET_STRING_ELT(r_names, i++, mkChar("Depth"));
    SET_VECTOR_ELT(r_ans, i, Renum_convert_CUarray_format_enum(obj->Format));
    SET_STRING_ELT(r_names, i++, mkChar("Format"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->NumChannels));
    SET_STRING_ELT(r_names, i++, mkChar("NumChannels"));
    SET_VECTOR_ELT(r_ans, i, ScalarReal(obj->Flags));
    SET_STRING_ELT(r_names, i++, mkChar("Flags"));
    SET_NAMES(r_ans, r_names);
    UNPROTECT(2);
    return(r_ans);
}
