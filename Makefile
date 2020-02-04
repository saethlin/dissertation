all: clean
	pdflatex main.tex -interaction=nonstopmode
	bibtex main
	pdflatex main.tex -interaction=nonstopmode
	pdflatex main.tex -interaction=nonstopmode
	mv main.pdf dissertation.pdf

fast:
	pdflatex main.tex -interaction=nonstopmode
	mv main.pdf dissertation.pdf

clean:
	rm -rf *.aux *.dvi *.log *.toc *.lof *.lot *.blg *~ *.bbl *.out
