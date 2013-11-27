#ifndef __UTIILITY_INDEXING__
#define __UTIILITY_INDEXING__

extern "C"
{

__device__ inline void
compute_tbg_indices(int idx, int n, int state_len, int *n_extra, int *n_lo, int *n_hi, int *out_idx_start, int *n_per_thread)
{
    // Number of regular and extra threads:
    int nlo, nhi, nextra;
    nextra = (n % state_len);
    //int n_regular = n - n_extra;
    nlo = (int) (n/state_len);
    nhi = (nlo+1);
    if (idx < nextra){
        *n_per_thread = nhi;
        *out_idx_start = nhi*idx;
    } else {
        *n_per_thread = nlo;
        *out_idx_start = nhi*nextra + nlo*(idx-nextra);
    }
    *n_lo = nlo;
    *n_hi = nhi;
    *n_extra = nextra;
    return;
}

}

#endif

