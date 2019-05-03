#!/bin/bash

echo -e "Removing existing build directory...\n"
rm -rf ./_build
echo -e "Removing existing source repos...\n"
rm -rf ../repo-src

DEFAULT_TAG=master
REPO_TAGS=( DERIVAPY_TAG DERIVAQT_TAG DERIVAWEB_TAG ERMREST_TAG HATRAC_TAG ERMRESTJS_TAG CHAISE_TAG )
echo -e "Cloning the following repositories:\n"
for TAG in ${REPO_TAGS[@]}; do
  export ${TAG}=${!TAG:-${DEFAULT_TAG}}
  echo ${TAG}: ${!TAG}
done

GITHUB_AUTH=
if [[ -n "$GITHUB_TOKEN" ]]; then
    GITHUB_AUTH=${GITHUB_TOKEN}:x-oauth-basic@
fi

git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/deriva-py ../repo-src/deriva-py --branch ${DERIVAPY_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/deriva-qt ../repo-src/deriva-qt --branch ${DERIVAQT_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/deriva-web ../repo-src/deriva-web --branch ${DERIVAWEB_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/ermrest ../repo-src/ermrest --branch ${ERMREST_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/hatrac ../repo-src/hatrac --branch ${HATRAC_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/ermrestjs ../repo-src/ermrestjs --branch ${ERMRESTJS_TAG} --single-branch
git clone https://${GITHUB_AUTH}github.com/informatics-isi-edu/chaise ../repo-src/chaise --branch ${CHAISE_TAG} --single-branch

echo -e "\nInstall code dependencies:\n"
pip install --no-warn-script-location --user ../repo-src/deriva-py

echo -e "\nSymlink files and directories...\n"
rm -f ./deriva-py && ln -sv ../repo-src/deriva-py/docs/ ./deriva-py
rm -f ./deriva-qt && ln -sv ../repo-src/deriva-qt/docs/ ./deriva-qt
rm -f ./deriva-web && ln -sv ../repo-src/deriva-web/docs/ ./deriva-web
rm -f ./ermrest && ln -sv ../repo-src/ermrest/docs/ ./ermrest
rm -f ./hatrac && ln -sv ../repo-src/hatrac/docs/ ./hatrac
rm -f ./ermrestjs && ln -sv ../repo-src/ermrestjs/docs/ ./ermrestjs
rm -f ./chaise && ln -sv ../repo-src/chaise/docs/ ./chaise

cd ./users-guide/
ln -sfv ../deriva-py/project-tutorial.md

cd ./annotations/
ln -sfv ../../ermrestjs/user-docs/annotation.md
ln -sfv ../../ermrestjs/user-docs/contexts.md
ln -sfv ../../ermrestjs/user-docs/export.md
ln -sfv ../../ermrestjs/user-docs/facet-examples.md
ln -sfv ../../ermrestjs/user-docs/facet-json-structure.md
ln -sfv ../../ermrestjs/user-docs/handlebars.md
ln -sfv ../../ermrestjs/user-docs/markdown-formatting.md
ln -sfv ../../ermrestjs/user-docs/mustache-templating.md
ln -sfv ../../ermrestjs/user-docs/pre-format.md
ln -sfv ../../ermrestjs/user-docs/pseudo-columns.md
ln -sfv ../../ermrestjs/user-docs/table-alternatives.md
ln -sfv ../../ermrestjs/user-docs/template-markdown-overview.md
ln -sfv ../../ermrestjs/user-docs/template-markdown.rst

echo -e "\nInitialization complete\n"