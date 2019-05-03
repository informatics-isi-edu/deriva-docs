FROM python:3.6.8-slim-stretch as base
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git
ARG GITHUB_TOKEN
RUN git clone -b build-refactor https://isi-isrd-dev:$GITHUB_TOKEN@github.com/informatics-isi-edu/deriva-docs

FROM python:3.6.8-slim-stretch
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git curl make rsync graphviz pandoc
RUN pip install docutils==0.14 recommonmark==0.4.0 sphinx==1.8.5 sphinx-autobuild sphinx-markdown-tables sphinx-rtd-theme nbsphinx ipykernel

COPY --from=base deriva-docs /deriva-docs
RUN cd /deriva-docs && git remote rm origin && git remote add origin https://isi-isrd-dev:$GITHUB_TOKEN@github.com/informatics-isi-edu/deriva-docs
ENV DATA_DIR=/deriva-docs
WORKDIR $DATA_DIR

