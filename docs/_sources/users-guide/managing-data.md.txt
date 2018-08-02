# Managing Data in DERIVA

When it comes to regular tasks such as uploading or downloading data to a DERIVA deployment, DERIVA provides client tools, desktop GUIs and an API module to interact with DERIVA programmatically.

## Desktop GUIs for Authenticating and Uploading Data (deriva-qt)

For relatively small files that live on your local system, the Deriva-Upload GUI is a user-friendly lightweight tool for uploading data from your system to a DERIVA framework.

* [DERIVA-Upload documentation](/deriva-qt/deriva-upload/)

 In most cases, a DERIVA framework will require a certain amount of authentication for uploading files. Download the DERIVA-Auth GUI to add the server configuration provided by your DERIVA administrator and you'll be able to quickly authenticate (various authentication protocols are supported) and get the token needed to make your upload successful.
 
 * [DERIVA-Auth documentation](/deriva-qt/deriva-auth/)
 
## Commandline Interface for interacting with Data (deriva-py)

The `deriva-py` repository provides a number of commandline clients for interacting with data stored in ERMrest (ie, metadata in tabular format) or Hatrac (data files in our object store component). This is especially useful if you have a large number of files, very large files, and/or you want to transfer them from a remote server.

To install , simply use this `pip` command:

```
$ pip install --upgrade git+https://github.com/informatics-isi-edu/deriva-py.git
```
Then use the following links for more information on a command:

* [Manage files stored in Hatrac](deriva-py/cli/deriva-hatrac-cli.html) - This tool allows you to manage namespaces and get, put or delete objects and access control lists.
* [Export tool (deriva-download-cli)](deriva-py/cli/deriva-upload.html) - the bulk export of tabular data (stored in ERMRest) and download of asset data (stored in Hatrac, or other supported HTTP-accessible object store).
* [Configure Access Control Lists (deriva-acl-config)](deriva-py/cli/deriva-acl-config.html) - Use this client to set access control lists in ERMrest.
* [Configure annotations (deriva-annotation-config)](deriva-py/cli/deriva-annotation-config.html) - This client sets annotations in ERMrest.

## `datapath` module (deriva-py)

deriva-py also includes a [Python API](deriva-docs/deriva-py/api/deriva.html) for a programmatic interface for ERMrest.

The `datapath` module in particular is an interface for building ERMrest "data paths" and retrieving data from ERMrest catalogs. It also supports data manipulation (insert, update, delete). In its present form, the module provides a limited 
programmatic interface to ERMrest.

* [`datapath` documentation and tutorial](deriva-docs/deriva-py/README.html)
