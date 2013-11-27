NVCC=/usr/local/cuda/bin/nvcc
# These work for a MacBookPro with a GeForceGT 330M
BIN_OPTS= -m64 -gencode arch=compute_10,code=sm_10
# -m64 -arch sm_21

%.ptx: %.cu
	$(NVCC) --ptx $(PTX_OPTS) -o $@ $<

%.cubin: %.cu GNUmakefile
	$(NVCC) -cubin $(BIN_OPTS)  -o $@ $<

%.fatbin: %.cu GNUmakefile
	$(NVCC) -fatbin $(BIN_OPTS) -o $@ $<

