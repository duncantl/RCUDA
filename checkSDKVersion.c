#include <cuda.h>
#include <cuda_runtime_api.h>

int
main(int argc, char *argv[])
{
 int ver, major;
 cudaDriverGetVersion(&ver);
 major = ver/1000;
 return(major < 5);
}
