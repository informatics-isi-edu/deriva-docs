# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = deriva-docs
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

init:
	rm -rf ./deriva-py
	rm -rf ./deriva-qt
	rm -rf ./deriva-web
	rm -rf ./ermrest
	rm -rf ./hatrac
	rm -rf ./ermrestjs
	rm -rf ./chaise

	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-py
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-qt
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-web
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/ermrest
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/hatrac
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/ermrestjs
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/chaise

	pip install --no-warn-script-location --user ./deriva-py

	./symlinks.sh

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile init
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)