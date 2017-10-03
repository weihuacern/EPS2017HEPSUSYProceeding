SHELL=/bin/bash

all: proceeding.pdf

# Simple case:  no figures or BibTeX
proceeding.pdf: proceeding.tex
	pdflatex proceeding
	bibtex proceeding
	pdflatex proceeding
	pdflatex proceeding

clean:
	-@rm -f *.{aux,toc,dvi,lof,lot,log,lom,bbl,blg,ps,out,pdfsync} *~
	rm proceeding.pdf
