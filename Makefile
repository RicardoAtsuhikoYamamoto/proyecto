TARGET = $(wildcard *.rmd)

default: $(TARGET:%.rmd=%.nb.html)

%.nb.html: %.rmd
	Rscript -e 'library(rmarkdown); render("$<")'
