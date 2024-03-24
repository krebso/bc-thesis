build:
	latexmk -f -pdf --shell-escape Thesis.tex

clean:
	latexmk -c
	rm -rf Thesis.run.xml Thesis.bbl Thesis.tdo Thesis.todos Thesis.ex Thesis.a* Thesis.g* Thesis.ist Sources/*.aux Sources/*.log Sources/*.fdb*

COUNT:=$(shell texcount Thesis.tex -char -inc | grep "Letters in text:" | tail -n1 | cut -f2- -d:)

count:
	@echo Letters: $(COUNT)
	@echo Pages: $(shell echo $(COUNT)/1800 | bc )/30
