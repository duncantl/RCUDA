RCUDA.pdf:

%.pdf: %.tex gpu.bib Examples.tex dist.tex dnorm.tex importanceSampling.tex
	-pdflatex $*
	-pdflatex $*
	bibtex $*
	-pdflatex $*

clean:
	-rm  RCUDA.aux RCUDA.log RCUDA.out RCUDA.blg




%.ptx:
	$(MAKE) -f ../sampleKernels/GNUmakefile  distance_gputools.ptx