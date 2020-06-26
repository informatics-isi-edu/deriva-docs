# Key Concepts for End Users

## How data is organized

Per deployment, data is organized in a model that describes different metadata, data types and their relationship to each other, usually to accurately represent the mechanics of actual experiments.

For example, in the demo model, x is the "parent" record with multiple possible Y...TBD

TBD ER diagram for demo model

For each assay type, different types of records are assigned to provide metadata, data files and other supplementary information that can help users discover the data, download data and reproduce experiments and studies or analyze and derive new data.

## Data Browser / Chaise

The user interface to the data catalog is run by Chaise; within a deployment, it is frequently referred to as the Data Browser or something similar. Data Browser/Chaise has a specific layout and look and feel that are similar across all deployments.

SCREENSHOT

Chaise uses consistent terms for page types. You'll mostly notice these in the beginnings of Chaise URLs. Here's an example of a typical Data Browser URL:

```
https://tutorial.derivacloud.org/chaise/recordset/#1/Data:Specimen
```

Which follows the general syntax:

```
example.com/chaise/<page type>/#<catalog number>/<data namespace>
```

Where:

* `example.com` is the deployment's domain,
* `chaise` is the default top-level directory going into the Data Browser
* `<page type>` is one of the following types of pages used in Chaise to display or interact with data.
* `#<catalog number>` is the number of the data catalog. This can be any number but is always preceded by a hashtag. It's not important to know much about this as a user except to realize that if a major change occurs that requires a different catalog be used, this number could change (although it's not likely).
* `<data namespace>` is the namespace of a Chaise database table that represents an element of the data model. In the example above, the URL is taking you to all of the Specimen records in the catalog.

URL paramters in Search queries that you'll frequently see:
* `@sort(RID)` - Enforces sorting for the search results. In this case, rows will be sorted by [RID (or Record ID)](link below).
* `*::facets::<string>` - As the user applies filters and text searches to a Search page, the URL will includes TBD.

## Page types

It's helpful to understand the different types of pages that represent most end users' experience.

| URL name     | Common name | Description                                                                                                                                                                          |
|--------------|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `recordset`  | Search page | Displays a set of records (Detail pages) that match a search query and may be filtered.                                                                                              |
| `record`     | Detail page | Captures all of the available metadata and known related data for a particular unit of data.                                                                                         |
| `recordedit` | Edit page   | Displays the Detail page in editing mode, for creating or editing a data record. This is only available for those with editing rights (ie, data submitters, programmers and admins). |

## Related tables/linked records

To allow deep interlinking between data records, data from various sources (ie, a large group of labs within a consortium or a collection of consortiums) may be linked together and discovered via search and filtering.  is the ability to link records to each other.

On many record pages, you'll find a list of metadata at the top of the page (the Summary), which includes significant metadata

 and then there are usually (though not always) sections listed underneath with their own tabular rows of data. These represent records from a different table that have been associated with this record.

## FAIR Principles

[As mentioned before](../../about.html), DERIVA promotes FAIR data production by:

* F: providing rich metadata using an Entity-Relationship model to express relationships between diverse data elements;
* A: offering rich access control and access to metadata via standard HTTP web service interfaces;
* I: integrating with standardized terms defined by collaborators, consortium or communities; and
* R: supporting dynamic model evolution so that the data presented accurately represents the current structure and state of knowledge within an investigation.

To support these principals, DERIVA emphasizes well-defined metadata and data models, the use of controlled vocabularies and ontologies, and any other ways to include enough measurable metadata for all data entered to allow the right data to show up in searches, and allow others to reproduce experiments, etc. TBD refine this...

## RID (Record ID)
