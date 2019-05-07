#!/bin/bash
set -e -o pipefail

echo -e "\nCommit and push generated doc files to GitHub...\n"
git add -A ./docs
git commit -m "Automated update: `date`" ./docs
git push
