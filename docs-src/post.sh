#!/bin/bash
set -e -o pipefail

echo -e "\nCopying (rsync) files to docs directory...\n"
rsync -avz -delete ./_build/html/ ../docs

echo -e "\nCommit and push files to GitHub...\n"
cd ../docs
GITHUB_EMAIL=${GITHUB_EMAIL:-isrddev@isi.edu}
git config user.name ${GITHUB_USER} && git config user.email ${GITHUB_EMAIL}
git add -A .
git commit -m "Automated update: `date`" .
git push