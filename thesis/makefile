.PHONY: pdf
pdf:
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex
	rm -f *.aux *.log *.out *.synctex.gz *.bcf *.bbl *.blg *.run.xml

	# open main.pdf

.PHONY: up
up:
	git pull
	git add .
	if [ -z "$(msg)" ]; then git commit -m "up"; else git commit -m "$(msg)"; fi
	git push
