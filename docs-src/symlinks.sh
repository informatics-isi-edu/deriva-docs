#!/bin/bash

rm -f ./deriva-py && ln -s ../repo-src/deriva-py/docs/ ./deriva-py
rm -f ./deriva-qt && ln -s ../repo-src/deriva-qt/docs/ ./deriva-qt
rm -f ./deriva-web && ln -s ../repo-src/deriva-web/docs/ ./deriva-web
rm -f ./ermrest && ln -s ../repo-src/ermrest/docs/ ./ermrest
rm -f ./hatrac && ln -s ../repo-src/hatrac/docs/ ./hatrac
rm -f ./ermrestjs && ln -s ../repo-src/ermrestjs/docs/ ./ermrestjs
rm -f ./chaise && ln -s ../repo-src/chaise/docs/ ./chaise

cd ./users-guide/
ln -sf ../deriva-py/project-tutorial.md

cd ./annotations/
ln -sf ../../ermrestjs/user-docs/annotation.md
ln -sf ../../ermrestjs/user-docs/contexts.md
ln -sf ../../ermrestjs/user-docs/export.md
ln -sf ../../ermrestjs/user-docs/facet-examples.md
ln -sf ../../ermrestjs/user-docs/facet-json-structure.md
ln -sf ../../ermrestjs/user-docs/handlebars.md
ln -sf ../../ermrestjs/user-docs/markdown-formatting.md
ln -sf ../../ermrestjs/user-docs/mustache-templating.md
ln -sf ../../ermrestjs/user-docs/pre-format.md
ln -sf ../../ermrestjs/user-docs/pseudo-columns.md
ln -sf ../../ermrestjs/user-docs/table-alternatives.md
ln -sf ../../ermrestjs/user-docs/template-markdown-overview.md
ln -sf ../../ermrestjs/user-docs/template-markdown.rst