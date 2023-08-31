HTML = index.html
# Get name of all Rmd files
DEPS = index.Rmd
# local assets
lASSETS := $(shell find assets)

# assets
$(HTML): $(DEPS) $(lASSETS)
	Rscript -e "rmarkdown::render('index.Rmd', output_file = 'index.html')"

deploy:
	mkdir slides
    cp -r ./assets ./slides
    mkdir -p ./slides
    cp ./index.html ./slides
    cp ./index.pdf ./slides
    cp -r ./assets ./slides
    if [ -d "./index_files" ]; then cp -r ./index_files ./slides; fi
    touch ./slides/.nojekyll

install:
	Rscript -e 'if (!require(rmarkdown)) install.packages("rmarkdown"); if (!require(knitr)) install.packages("knitr"); if (!require(xaringan)) install.packages("xaringan"); if (!require(ggplot2)) install.packages("ggplot2");'

clean:
	rm -rf ./slides

.PHONY: ./slides deploy install clean