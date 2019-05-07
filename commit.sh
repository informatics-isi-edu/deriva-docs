#!/bin/bash
set -e -o pipefail

echo -e "\nCommit and push generated doc files to GitHub...\n"
GITHUB_USER=${GITHUB_USER:-isi-isrd-dev}
GITHUB_EMAIL=${GITHUB_EMAIL:-isrddev@isi.edu}
git config user.name ${GITHUB_USER} && git config user.email ${GITHUB_EMAIL}
git add -A ./docs
git commit -m "Automated update: `date`" ./docs
git push