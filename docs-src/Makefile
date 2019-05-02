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
	rm -rf ./_build
	rm -rf ../repo-src

	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-py ../repo-src/deriva-py
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-qt ../repo-src/deriva-qt
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/deriva-web ../repo-src/deriva-web
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/ermrest ../repo-src/ermrest
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/hatrac ../repo-src/hatrac
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/ermrestjs ../repo-src/ermrestjs
	git clone https://$(GITHUB_TOKEN):x-oauth-basic@github.com/informatics-isi-edu/chaise ../repo-src/chaise

	pip install --no-warn-script-location --user ../repo-src/deriva-py

	./symlinks.sh

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile init
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	rsync -avz -delete ./_build/html/ ../docs