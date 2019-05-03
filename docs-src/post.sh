#!/bin/bash

GITHUB_AUTH=
if [[ -n "$GITHUB_TOKEN" ]]; then
    GITHUB_AUTH=${GITHUB_TOKEN}:x-oauth-basic@
fi

echo -e "Copying (rsync) files to docs directory...\n"
rsync -avz -delete ./_build/html/ ../docs

# echo -e "Commit and push files to GitHub...\n"
