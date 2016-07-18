#include <cuda_runtime.h>
#include <stdio.h>

int
main(int argc, char **argv)
{
    int runtimeVersion = 0;
    cudaRuntimeGetVersion(&runtimeVersion);
    fprintf(stdout, "%d\n", runtimeVersion);
    return(0);
}
