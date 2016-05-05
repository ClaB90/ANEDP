FILE = `basename "${CURDIR}"`
OUTDIR = ./$(FILE)-build
SRC = ./src

.PHONY: prepare

all: prepare
	make compile
	make bibliography
	make compile
	make compile

compile: prepare
	pdflatex -output-directory=$(OUTDIR) $(FILE).tex

edit: compile
	make run & vim $(FILE).tex

bibliography: prepare
	cd $(OUTDIR); biber $(FILE)

run:
	cd $(OUTDIR); evince $(FILE).pdf 2> /dev/null

copy:
	cp $(OUTDIR)/$(FILE).pdf .

clean:
	cd $(OUTDIR); rm -f *.aux *.bbl *.bcf *.blg *.log *.nav *.out *.snm *.toc *.vrb *.xml

cleansrc:
	cd $(SRC); rm -f *.aux *.bbl *.bcf *.blg *.log *.nav *.out *.snm *.toc *.vrb *.xml *.tex~ *.bib~

cleanTexmaker:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.nav *.out *.snm *.toc *.vrb *.xml *.tex~

cleanall:
	make cleanTexmaker
	make cleansrc
	make clean

prepare:
	mkdir -p $(OUTDIR)
