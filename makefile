.PHONY: pdf
pdf:
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex
	rm -f *.aux *.log *.out *.synctex.gz *.bcf *.bbl *.blg *.run.xml

.PHONY: up
up:
	git pull
	git add .
	if [ -z "$(msg)" ]; then git commit -m "up"; else git commit -m "$(msg)"; fi
	git push
