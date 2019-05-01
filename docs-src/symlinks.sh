#!/usr/bin/env bash

cd ./users-guide/
ln -sf ../deriva-py/docs/project-tutorial.md

cd ./annotations/
ln -sf ../../ermrestjs/docs/user-docs/annotation.md annotation.md
ln -sf ../../ermrestjs/docs/user-docs/contexts.md contexts.md
ln -sf ../../ermrestjs/docs/user-docs/export.md export.md
ln -sf ../../ermrestjs/docs/user-docs/facet-examples.md facet-examples.md
ln -sf ../../ermrestjs/docs/user-docs/facet-json-structure.md facet-json-structure.md
ln -sf ../../ermrestjs/docs/user-docs/handlebars.md handlebars.md
ln -sf ../../ermrestjs/docs/user-docs/markdown-formatting.md markdown-formatting.md
ln -sf ../../ermrestjs/docs/user-docs/mustache-templating.md mustache-templating.md
ln -sf ../../ermrestjs/docs/user-docs/pre-format.md pre-format.md
ln -sf ../../ermrestjs/docs/user-docs/pseudo-columns.md pseudo-columns.md
ln -sf ../../ermrestjs/docs/user-docs/table-alternatives.md table-alternatives.md
ln -sf ../../ermrestjs/docs/user-docs/template-markdown-overview.md template-markdown-overview.md
ln -sf ../../ermrestjs/docs/user-docs/template-markdown.rst template-markdown.rst