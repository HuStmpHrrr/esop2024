AGDAFILES:=$(shell find . -name '*.agda')

HSFILES=$(shell find out/ -name '*.hs')

docs/index.html: docs/ assets/index.md
	cd assets && \
	pandoc index.md -H include.html --no-highlight --metadata pagetitle='Layered Modal Type Theory: Where Meta-programming Meets Intensional Analysis' -t html --css styling.css -o ../docs/index.html

docs/:.submodules-pulled ${AGDAFILES}
	agda --html --highlight-occurrences --html-dir=docs src/README.agda
	cp assets/Agda.css docs/Agda.css
	for f in docs/*.html; do python3 assets/process.py $$f; done

.submodules-pulled:
	git submodule init
	git submodule update
	touch .submodules-pulled
