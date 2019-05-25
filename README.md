# deriva-docs
Top-level documentation build repo using `sphinx` for the DERIVA software 
stack. The `sphinx` build process can either be run via a "manual" process 
or via a [`docker`](https://hub.docker.com/r/isrddev/deriva-docs) image.

### Common options

Environment variables can be set in the shell environment (or, when 
using docker, passed with the `-e` switch) to override the GitHub account and branch used to pull/commit/push to the 
documentation GitHub Pages repository:

* `GITHUB_TOKEN`: The GitHub _oauth_ token to use for pull/commit/push operations 
on the [`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) repo.
* `GITHUB_TAG`: The branch/tag name of the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) 
repo to use for building.
* `GITHUB_USER`: The GitHub username to authenticate for pull/commit/push 
operations. Note that the `GITHUB_TOKEN` environment variable must be a 
valid access token for the user specified against the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) repo.
* `GITHUB_EMAIL`: The email address to use for `GITHUB_USER`. It is 
_recommended_ that this email address match the registered email address 
for the `GITHUB_USER` or undesired commit behavior may occur.

### Manual Update
The manual build process only works on Linux or MacOS operating systems.

###### Procedure:
1. Clone this repository.
2. Install the `pandoc` dependency for Jupyter Notebook conversion support. Follow the instructions for your platform [here](http://pandoc.org/installing.html).
3. Install Python dependencies via `pip` using the following command:
    ```
    pip3 install --user -r requirements.txt
    ``` 
4. Run: `make -C ./docs-src html` from the cloned repo root directory.
5. Run: `commit.sh` to update only the built documentation to the live 
GitHub Pages website (when pushing to master branch only).

### Docker Update
The docker container based update requires a properly setup docker environment. 
Follow the installation instructions for your specific platform [here](https://docs.docker.com/install/).

##### Installation with Docker Hub

Pull the image from Docker Hub using:

```sh
docker pull isrddev/deriva-docs
```

##### Installation from source

Clone this repository build the image using the following command:

```sh
docker build -t isrddev/deriva-docs .
```

#### Usage

Run the following command on the docker image to automatically build and 
publish the documentation as the GitHub user `isi-isrd-dev` from the master 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) branch. 

* Note that in the default usage below, the `GITHUB_TOKEN` 
environment variable must be a valid token with read/write scopes for 
the default GitHub user `isi-isrd-dev` and the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) repo.
* The `-e GITHUB_TOKEN=XXX` may be omitted to only build the docs without 
the subsequent commit/push to GitHub.


```sh
docker run -it -e GITHUB_TOKEN=XXX isrddev/deriva-docs build
```
