# DERIVA Client Tools

In addition to the Chaise web interface (described in [primary components doc](link), DERIVA offers other client applications for end users
* a desktop GUI that data submitters can use to authenticate with the deployment and upload data files and
* command line interface for interacting with the data.


## Desktop clients (deriva-qt)

DERIVA provides [Graphical User Interface tools](deriva-qt/index.html) for submitting data to a DERIA platform:

* An Authentication Agent that connects with your DERIVA security credentials
* File Upload for uploading data from your local environment. This tool is best when your uploading from your own computer and it's not a very large amount of data.

* [Graphical User Interface Desktop Client tools](deriva-qt/index.html)

## Commandline Clients (deriva-py)

[Commands available in the deriva-py module](deriva-py/cli/commands.html) include:

* deriva-acl-config: a command-line ERMrest ACL configuration utility
* deriva-hatrac-cli: a command-line Hatrac client
* deriva-download-cli: a command-line utility for batch export and download of tabular data from ERMrest and objects from Hatrac
* deriva-upload-cli: a command-line data upload and metadata update utility
