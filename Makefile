all: pdf

pdf: memleak.tex
	pdflatex memleak.tex
	bibtex memleak
	pdflatex memleak.tex
	pdflatex memleak.tex

spellcheck:
	for i in *.tex; do aspell --lang=en --personal=./personal.wl -c $$i; done

clean:
	rm -f *.dvi *.ps *.pdf *.bbl *.aux *.log

xclean: clean
	rm -f *~ */*~ */*/*~
