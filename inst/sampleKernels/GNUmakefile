NVCC=/usr/local/cuda/bin/nvcc

%.ptx: %.cu
	$(NVCC) --ptx -o $@ $<
