#!/bin/bash
set -e -o pipefail

echo -e "\nCopying (rsync) files to docs directory...\n"
rsync -avz -delete ./_build/html/ ../docs

echo -e "\nCommit and push files to GitHub...\n"
cd ../docs
GITHUB_USER=${GITHUB_USER:-isi-isrd-dev}
git config user.name ${GITHUB_USER} && git config user.email '{$GITHUB_USER}@users.noreply.github.com'
git add -A .
git commit -m "Automated update: `date`" .
git push --dry-run