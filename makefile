.PHONY: pdf
pdf:
	xelatex -shell-escape thesis.tex
	bibtex thesis.aux
	xelatex -shell-escape thesis.tex
	xelatex -shell-escape thesis.tex
	rm -f *.aux *.log *.out *.synctex.gz *.bcf *.bbl *.blg *.run.xml

.PHONY: up
up:
	git pull
	git add .
	if [ -z "$(msg)" ]; then git commit -m "up"; else git commit -m "$(msg)"; fi
	git push
