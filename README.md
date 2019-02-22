# deriva-docs
Top-level documentation for DERIVA software

## Updating docs for code repositories:

Each repository owner makes edits in their “docs/“ directory.

Locally, I set up my repos so that I have a master directory “division-docs” - in that directory, I pull in the deriva-docs repo and all the source repos (I still need to add resolver). 
```
division-docs/
  deriva-docs
  chaise
  deriva-py
  deriva-qt
  ermrest
  ermrestjs
  hatrac
  ioboxd
```

To update:
* (ideally, empty out the individual repo directories under docs-src first)
* pull latest git from all repos (or if I’m only updating one repo, update the one)
* from `deriva-docs/docs-src/` directory, copy `docs/` directories of repos over to deriva-docs/docs-src/<repo>/:
  
```
cp -R ../../chaise/docs/* chaise/
cp -R ../../deriva-py/docs/* deriva-py/
cp -R ../../deriva-qt/docs/* deriva-qt/
cp -R ../../ermrest/docs/* ermrest/
cp -R ../../ermrestjs/docs/* ermrestjs/
cp -R ../../ioboxd/docs/* ioboxd/
```
* run: `make clean html`
* open the output index file (\_build/html/index.html) in my browser to review changes.
* when happy, copy to `deriva-docs/docs/` dir:
            `cp -R _build/html/* ../docs/`
* Then commit and push in the master branch to update the live website.

FYI, there is a 'users-guide' directory in deriva-docs/docs-src/ that incorporates symlinks from various different repos. 

