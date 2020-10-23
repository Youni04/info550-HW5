# rule for making report  
HW5_report.html: HW5_report.Rmd help.csv
	Rscript -e "rmarkdown::render('HW5_report.Rmd', quiet = TRUE)"

install: HW5_install.R 
	chmod +x install.R && \
	Rscript install.R

.PHONY: help
help:
	@echo: "HW5_report.html: Generate final analysis report"
	@echo: "help.csv: Health Evaluation and Linkage to Primary Care dataset"