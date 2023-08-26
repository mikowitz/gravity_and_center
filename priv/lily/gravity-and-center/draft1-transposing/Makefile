TIMESTAMP = $(shell date +"%Y%m%d-%H%M")

default: build_score build_titlepage build_perfnotes compose open
# default: perfnotes

compose:
	pdftk titlepage.pdf perfnotes.pdf score.pdf cat output $(TIMESTAMP).pdf

open:
	open $(TIMESTAMP).pdf

titlepage: build_titlepage open_titlepage

perfnotes: build_perfnotes open_perfnotes

score: build_score open_score


build_score:
	lilypond -dno-point-and-click score.ly

open_score:
	open score.pdf

build_titlepage:
	xelatex titlepage.tex

open_titlepage:
	open titlepage.pdf

build_perfnotes:
	lilypond-book --output=. --pdf perfnotes.lytex
	xelatex perfnotes.tex

open_perfnotes:
	open perfnotes.pdf
