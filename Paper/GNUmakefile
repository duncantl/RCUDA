RCUDA.pdf:

%.pdf: %.tex gpu.bib Examples.tex dist.tex dnorm.tex importanceSampling.tex
	-pdflatex $*
	-pdflatex $*
	bibtex $*
	-pdflatex $*

clean:
	-rm  RCUDA.aux RCUDA.log RCUDA.out RCUDA.blg




# make distance_gputools.ptx PTX_OPTS="-O3 -gencode arch=compute_35,code=sm_35"
%.ptx: %.cu
	$(MAKE) -f ../inst/sampleKernels/GNUmakefile  $@

