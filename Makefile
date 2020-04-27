TARGET = $(wildcard *.rmd)

default: $(TARGET:%.rmd=%.pdf)

%.pdf: %.rmd
	Rscript -e 'library(rmarkdown); render("$<")'
