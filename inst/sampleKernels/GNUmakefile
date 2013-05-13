NVCC=/usr/local/cuda/bin/nvcc

%.ptx: %.cu
	$(NVCC) --ptx -o $@ $<

%.cubin: %.cu GNUmakefile
	$(NVCC) -cubin -m64 -arch sm_21  -o $@ $<

