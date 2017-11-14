

all: template.tex
	pdflatex template
	bibtex template
	pdflatex template
	pdflatex template

clean:
	rm -rf *.log *.aux *.bbl *.blg *.ps *.dvi *.out *.tmp


plots:
	cd ./matlab && matlab -nosplash -r sample -logfile mat.log


jfr: template.tex
	latex template
	bibtex template
	python make_single_file.py
	latex template
	latex template
	dvips template
	ps2pdf template.ps
  
  
.PHONY: clean plots jfr
