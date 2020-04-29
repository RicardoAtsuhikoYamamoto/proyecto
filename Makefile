TARGET = $(wildcard *.rmd)

default: $(TARGET:%.rmd=%.html)

%.html: %.rmd
	Rscript -e 'library(rmarkdown); render("$<")'
