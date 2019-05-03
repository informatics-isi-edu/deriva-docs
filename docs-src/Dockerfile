# Create first-stage image
FROM python:3.6.8-slim-stretch as base
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git

# Clone deriva-docs from GitHub
ARG GITHUB_TOKEN
ARG GITHUB_TAG
ENV GITHUB_TAG ${GITHUB_TAG:-master}
RUN git clone -b $GITHUB_TAG https://$GITHUB_TOKEN:x-oauth-basic@github.com/informatics-isi-edu/deriva-docs

# Second-stage image will overwrite the first, removing any exposed GITHUB_TOKENS from the docker history
FROM python:3.6.8-slim-stretch
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git curl make rsync graphviz pandoc
RUN pip install docutils==0.14 recommonmark==0.4.0 sphinx==1.8.5 sphinx-autobuild sphinx-markdown-tables sphinx-rtd-theme nbsphinx ipykernel
COPY --from=base deriva-docs /deriva-docs
ENV DATA_DIR=/deriva-docs
WORKDIR $DATA_DIR

