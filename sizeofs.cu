#include <stdio.h>
#include <curand_kernel.h>

#include "showSizeofs.cu"

int
main(int argc, char *argv[])
{
  showSizeofs();
}