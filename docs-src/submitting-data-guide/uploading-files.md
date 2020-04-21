# Uploading Files in DERIVA Chaise

Chaise provides various methods for adding data files to the Data Browser.



## Which method should you use?

TBD represent as a table

If you have a few files that are less than 10 GB...

You can directly [upload files in the browser](#) using a typical File Browser function.

If you have many files and/or files larger than 10 GB...

Use [DERIVA Client tools](#). These tools provide the options for GUI or commandline.

    If you are comfortable with using the commandline and/or want to upload files from a remote server or cluster...

      Use the [deriva-upload-cli command](#).

    If you are more comfortable with a GUI or app experience...

      Use the [DERIVA-Upload GUI tool](#).

## Requirements for uploading files

* Be a member of the relevant authentication group (see TBD)
* If using the browser window method, you'll need to be logged in to the Data Browser and be in the correct record for that data type. For example, in our example model, files are added under the Replicate record.
* If using DERIVA client tools, you will need to always make sure to use DERIVA-Auth to log in to the server where you want to upload files.

### Uploading files in the browser window

This method is the simplest. From the appropriate base record, you'll find the Section that accepts type of files you want to upload.

Click "Add Record" and fill out the form.

Find the field that accepts files (it will be called something like URL or Field depending on the deployment configuration) and click "Select File".

Browse your local environment for the file and click "Open".

### Uploading files via DERIVA client tools

DERIVA Client tools provide a suite of tools for authenticating with a Chaise deployment and upload files using either a GUI tool or a commandline client.

#### Installing DERIVA-Client suite

DERIVA-Client includes many tools for interacting with a DERIVA deployment. The relevant tools for data submitters are DERIVA-Auth, DERIVA Upload GUI, and the deriva-upload-cli commandline client.

Install DERIVA-client from our [GitHub repository here](https://github.com/informatics-isi-edu/deriva-client). There are installer packages for Windows and MacOSX and you can also install via pip on the commandline.

#### Authenticating with DERIVA-Auth

Before you can actually upload files, you will need to authenticate with the DERIVA-Auth GUI on your local system (even if you are managing files from a remote server).

TBD outline steps - use existing content

#### Using the Deriva-Upload GUI

http://docs.derivacloud.org/deriva-qt/uploading.html

#### Using the deriva-cli commandline interface

####Logging out

### Uploading files via command-line

#### Logging into the server with deriva-auth
