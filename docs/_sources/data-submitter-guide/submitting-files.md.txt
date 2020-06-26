# Options for Uploading Files

Chaise provides various methods for uploading data files, which are available for those with editing rights (ie, in the correct authentication group).

## Which method should you use?

### If you have a relatively few number of files that are less than 10 GB

From within the data entry forms, you can directly upload files in the browser using a typical File Browser function.

0. Make sure you're logged in.

1. Navigate to the record for that data type. For example, in our example model, files are added under the Replicate record.

2. Click "Add Record" and fill out the form.

3. Find the field that accepts files (it will be called something similar to "File URL", depending on the deployment configuration) and click "Select File".

4. Browse your local environment for the file and click "Open".

### If you have many files and/or files larger than 10 GB

Use [DERIVA Client tools](../../deriva-client.html). These tools include GUI or commandline versions.

* If you are comfortable with using the commandline and/or want to upload files from a remote server or cluster, use the `deriva-upload-cli`.
* If you are more comfortable with a GUI or app experience, use the DERIVA-Upload GUI tool.

The next page will guide you through using the DERIVA CLient tools to upload files: [Uploading files via DERIVA-Upload and DERIVA-Auth](uploading.html).
