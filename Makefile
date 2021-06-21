# requires pandoc and xelatex

PANDOC_OPTS = -s --pdf-engine=pdflatex
PDF_SLIDES_OPTS = -t beamer --template vzg-slides.tex --slide-level=2

slides.pdf: metadata.yaml slides.md
	pandoc $(PANDOC_OPTS) $(PDF_SLIDES_OPTS) -o $@ $?

slides.tex: metadata.yaml slides.md
	pandoc $(PANDOC_OPTS) $(PDF_SLIDES_OPTS) -o $@ $?
