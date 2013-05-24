RCUDA.pdf:

%.pdf: %.tex gpu.bib
	-pdflatex $*
	-pdflatex $*
	bibtex $*
	-pdflatex $*

clean:
	-rm  RCUDA.aux RCUDA.log RCUDA.out RCUDA.blg