RCUDA.pdf:

%.pdf: %.tex gpu.bib Examples.tex
	-pdflatex $*
	-pdflatex $*
	bibtex $*
	-pdflatex $*

clean:
	-rm  RCUDA.aux RCUDA.log RCUDA.out RCUDA.blg