# Makefile for Sphinx documentation
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
	./init.sh

livehtml: init
	sphinx-autobuild -b html $(SPHINXOPTS) $(O) "$(SOURCEDIR)" "$(BUILDDIR)/html"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile init
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo -e "\nCopying (rsync) files to docs directory...\n"
	rsync -avz  --exclude='CNAME' --exclude='.nojekyll' --exclude='.buildinfo' --delete "$(BUILDDIR)/html" ../docs
