# Introduction

In the DERIVA ecosystem, data is submitted to our data catalog service, ERMrest, and the assets/files are stored in Hatrac.

However, the data submitter will mostly interface with the user interface, Chaise, and in many cases DERIVA client tools to create and edit records and upload data files.

[Users can also interact with the Restful web services to retrieve data for their own purposes - should this be a different guide?]


## Who is this for?

This guide is for users who are updating the catalog of a DERIVA deployment and may include:

* Postdocs
* Researchers
* Bioinformaticians


## Features and capabilities

DERIVA is designed to be flexible and configurable but focuses especially on capturing comprehensive metadata, using controlled vocabularies and ontologies and providing data to the end user to establish credibility and reproducibility of the data.

- Security: DERIVA-Auth and Globus provide best practices in authentication and authorization. MD5 hashtags for ensuring the data in the catalog hasn't been corrupted.
- Data entry: Chaise web forms provide straightforward entering of metadata but ensures the metadata aligns with standardized vocabularies and ontologies where possible to avoid inconsistencies, misspellings and allow for more precise interlinking between data records.
- Client tools: DERIVA client tools allow users to upload many and/or large sets data files with a single command.
