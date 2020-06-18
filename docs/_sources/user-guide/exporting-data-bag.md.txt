# Exporting All Data Assets as a BAG

## How to generate a bulk export “Bag” to download all data for a single record

BDBag (Big Data Bag) allows for reliable transfer of a “bag” of digital content - in this context, a group of files that you want to export in bulk from a single record instead of clicking various links to download them individually. At this time, it is available as a command-line client (we do plan to release a GUI client in the near future).

This is a convenient method for dealing with many and/or very large files that aren’t practical for downloading via a web browser. It’s also the preferred method if you want to export files to a remote server or cluster.

A "bag" consists of a hierarchical directory containing the data files and other accompanying metadata files that enable and document the secure transfer of the bag to your chosen location. This provides verification that you have all the files you were trying to export AND that they were not corrupted in the process.

## Overall process

Using our BDBag program generally requires three phases:

1. First, you will need to **use our custom application “DERIVA Auth” to authenticate with the deployment website**. This will require membership in the appropriate authentication group.
2. Then you need to **export to a BAG file**, which is a description of the data you want to export.
The resulting file includes details about all of the files you want (ie, a manifest), but does not yet include the actual files themselves.
3. Finally, you run the BDBag client (`bdbag --materialize`) to export (ie, “materialize”) the files.

The files are then downloaded and saved to the directory where you ran the client, categorized by data type in a specific hierarchical layout.

We'll walk you through an example from the Demo deployment in greater detail below.

## Before you begin

The following are some steps and things to consider before exporting files to a BAG.

### Available storage

Make sure your system has enough space for the data you are downloading, as BAGs may be quite large.

### Consider Time

With large files, it may take a while for all of the data to download.

If the process is interrupted, the program will retry for a while.

But if the file cannot be downloaded (ie, network outage), run the `bdbag --materialize` command again with the `--missing` option. This will skip any files that already downloaded successfully and continue the download where it left off.

### Download and install DERIVA Client

DERIVA Client is an app suite that includes the BDBag command-line program (`bdbag`) as well as the DERIVA-Auth GUI and command line programs that you will also need to authenticate your downloads. (Note that there are other programs within this suite that are useful for data submitters, such as the upload client.)

This program is built on Python and is available via the command `pip install deriva-client`. For complete installation instructions, see the [DERIVA Client Tools](deriva-client.html) page.

### Configure authorization via DERIVA-Auth

Set up authorization with our DERIVA-Auth application. Important: Once you’ve completed these steps, remember that you will need to open the DERIVA-Auth application and login to website (server) each time you want to download data with BDBag.

For details on setting up authorization with DERIVA-Auth, see the [DERIVA Auth](deriva-auth.html) page.

## Running BDBag to export data locally

The following instructions will export files to your local system. To demonstrate, we will export a record on our Demo deployment that has a manageable amount of data (5MB).

### 0. Make sure you are in the right Globus group

At this time, all DERIVA deployments are using Globus for authentication. So you will need to find out which Globus group you need, request to join and wait until you are approved by the group admin.

For the purposes of this documentation, we have set up a group especially for users of the demo deployment.

* Go to the "demo-group" Globus page at LINK.
* Click the Join button.
* Choose your login method. If your institution is listed in the dropdown menu, you can use your institution credentials. There are also options to use ORCID, Google or create your own username/password.
* Globus will walk you through the process of authenticating with your preferred login method.
* This group is set to automatically accept requests. However, keep in mind that most deployments will require approval from an admin.
* Once you receive the email notification that your request has been approved, you will be able to authenticate for `tutorial.derivacloud.org`.

### 1. Authenticate with DERIVA-Auth

When you want to export all of the files from a record, make sure you have opened the [DERIVA-Auth](deriva-auth.html) application and are logged in for the website you are will be exporting from.

For this example, we will enter `tutorial.derivacloud.org` in the "Server" field and click "Add"

SCREENSHOT

Click "Login" and sign in with the credentials you chose when you joined the `xyz` Globus group in the previous step.

You will see an "Authentication successful" message.

SCREENSHOT

### 2. Create the bag

To create the initial “bag”, go to the record page with the data you want, click the Export button towards the upper right part of the screen and choose BAG.

For this example:

* Go to where?

SCREENSHOT


A progress window appears saying that the BAG is being created.

SCREENSHOT

Then a ZIP file is downloaded to your current directory with the metadata files describing the data (including appropriate MD5 checksums).

Remember, this will _not_ include the files themselves. This is a manifest of the files that will be exported to make sure that they are not corrupted during the process.

In this case, the filename is equal to the record name, for example:

```
XYZ.zip
```

Make a note of the path to this file - it will be the argument for the `bdbag` command you are about to run.

### 3. Materialize the bag

Run the following command to export the files and download them in the current directory:

```
bdbag XYZ.zip --materialize
```

This program outputs messages as it extracts the bag, looks up the remote addresses of the data files and fetches each file. This program also automatically performs full validation of the files after they have been fetched.

Note: If you are receiving authentication errors, even if you have logged in using DERIVA-Auth, check the bundle release page (if using bundles) or the PyPi release page for deriva-client (if using a Python-based installation) to see if there is a more recent version of DERIVA-Auth and download it.

You will now have a subdirectory with the same name as the bag:

```
Gene_Q-4G3J/
```

## Contents of your BAG

In addition to the data files themselves, you will see many other files in the BAG directory including text files that describe the metadata, the data files that are part of the bag and their remote locations, system information, checksums, etc.

Find the data files under the assets/ directory by data type:

```
<bag name>/data/assets/<data type>/url/
```

Where `<data type>` is the type of data for that record (i.e., “Processed Data” or “Image File”).

For example, if you downloaded a bag for XYZ, which included image files, you would find them under:

```
XYZ/data/assets/image_file/url/
```

Here is an overview of the other files available in a bag (in alphabetical order). The most useful one to most users is `fetch.txt`, which lists all the related data files (via their remote URLs).

| Filename                 | Description                                                           |
|--------------------------|-----------------------------------------------------------------------|
| `bag-info.txt`           | Metadata about the BDBag program (version, etc.)                      |
| `bagit.txt`              | Metadata about the underlying BagIt program.                          |
| `fetch.txt`              | Lists the remote URLs to the location of the data files.              |
| `manifest-md5.txt`       | A manifest for MD5 checksums.                                         |
| `metadata/manifest.json` | A bagit-ro research-object metadata manifest of files in JSON format. |
| `tagmanifest-md5.txt`    | List of the internal files (ie, the files listed in this table.)      |

For more details on the Bagit specification, see: [https://tools.ietf.org/html/draft-kunze-bagit-17](https://tools.ietf.org/html/draft-kunze-bagit-17)

## Troubleshooting

### If you used DERIVA Auth but are still getting an error that you are not allowed to download data…

It is likely that you are not logged in to the right server/website. This can happen if you are using this procedure on multiple websites. Double-check the content of the “Server” field in DERIVA Auth.

### If your bag export failed…

BDBag keeps track of what files were exported. If the transfer is interrupted, it will re-try several times.

### If the transfer completely stops (after re-trying several times)...

Rerun the same command with the `--missing` option. The command will only process the appropriately missing files.

### If you want to verify you received all of the files in the bag...

Re-run your BDBag command with the `--validate full` option at the end to confirm the data integrity.

### If you want to filter for certain files…

Use the `--fetch-filter` option to perform string-based pattern matching on the filename to only materialize certain types of files.

For example, if you wanted to only fetch files with the .bam extension, you would run a command as follows:

```
bdbag --fetch-filter 'filename$*.bam' XYZ
```

## Running BDBag to export data to a remote cluster/server

This is a future feature of BDBag. Until this is ready, if you have a need to download files to remote cluster/server, please contact your deployment representative.

## Related Documentation

You may find the complete list of command line options here:

[https://github.com/fair-research/bdbag/blob/master/doc/cli.md](https://github.com/fair-research/bdbag/blob/master/doc/cli.md)
