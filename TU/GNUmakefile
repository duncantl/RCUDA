CUDA_DIR=/usr/local/cuda

%.tu: %.c
	gcc -c -fdump-translation-unit -I$(CUDA_DIR)/include -o /dev/null $<
