


main4.pdf : main4.bbl main4.tex
	xelatex main4.tex
	xelatex main4.tex

main4.bbl : main4.aux main4.tex references.bib
	biber main4

main4.aux : main4.tex 
	xelatex main4.tex


clean: 
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.toc
	rm -f *.log
	rm -f *.bcf
	rm -f main4.pdf
	rm -f main4.run.xml