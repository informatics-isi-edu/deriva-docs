FROM ddidier/sphinx-doc:latest
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends rsync pandoc
RUN pip install sphinx-markdown-tables nbsphinx ipykernel

