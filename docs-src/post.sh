#!/bin/bash
set -e -o pipefail

echo -e "\nCopying (rsync) files to docs directory...\n"
rsync -avz -delete ./_build/html/ ../docs

echo -e "\nCommit and push files to GitHub...\n"
cd ../docs
MESSAGE="Automated update: `date`"
git commit --dry-run -m "${MESSAGE}" .
git push --dry-run