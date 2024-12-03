.PHONY: pdf
pdf:
	xelatex thesis.tex
	bibtex thesis.aux
	xelatex thesis.tex
	xelatex thesis.tex
	rm -f *.aux *.log *.out *.synctex.gz *.bcf *.bbl *.blg *.run.xml

.PHONY: up
up:
	git pull
	git add .
	if [ -z "$(msg)" ]; then git commit -m "up"; else git commit -m "$(msg)"; fi
	git push
