# Using the Chaise Data Browser

The **Chaise Data Browser** is the configurable web interface of the [DERIVA platform](https://derivacloud.org) for exploring, searching, and managing structured data. It provides dynamically generated views of data based on the underlying data model and metadata annotations.

This documentation introduces Chaise for both general users and those evaluating DERIVA as a data management framework. Screenshots use the [FaceBase](https://www.facebase.org) deployment as an example; however, each DERIVA deployment can configure Chaise differently — customizing visible columns, table layouts, filters, record layouts, access policies, etc. - to best represent the data model of that domain.

For those with data submitter or administrator roles, see [Managing Catalogs](managing-catalogs.html) to learn more about managing the model and annotations.

> **Terminology:**
> - A *recordset page* displays a table of multiple records (similar to search results).
> - A *record page* displays detailed information about one record, including related data and files.

## Recordset (Search) Page Overview

![screenshot of FaceBase landing page showing search results and sidebar filters.](/images/chaise-search-example.png)

Common elements of a recordset (search) page include:

- Filtering sidebar
- Search bar above the results
- Search results based on filters

> **Configurable:** Deployments can customize which tables appear, default filters, and how metadata columns are displayed through model annotations.

## Filtering Sidebar

![screenshot of FaceBase filtering sidebar showing experiment type, species, age stage and other facets.](/images/chaise-filter-sidebar-example.png)

The filtering sidebar is a configurable set of *facets*. In the FaceBase example, it includes common biomedical data elements such as experiment type, species, age stage, and anatomy. Within each facet are a set of attributes represented in the data. Deployments can choose which facets are open by default or have all of them closed.

Selecting and de-selecting attributes in any facet will filter the results to show only data with those attributes.

For filters with long lists of attributes, you can use the small search box within the filter to search across those attributes. You can also click *Show Details* to open a modal window to access the full attribute list.

> **Configurable:** Administrators can control which facets appear, their order, and which are expanded by default using model annotations.

## Search Results

![screenshot of FaceBase recordset view showing metadata columns and sortable headers.](/images/chaise-recordset-example.png)

The main body of the page displays **search results** as columns of metadata for each record. Deployments can configure which columns are shown and in what order. Column headers are sortable.

Use the larger search field above the results to enter keywords and search across all visible columns.

> **Under the hood:** Each Chaise search or filter action corresponds to a REST query to the DERIVA backend (ERMrest), ensuring consistent data access across the web interface, APIs, and programmatic tools.

![screenshot of the View details icon on a search result.](/images/chaise-view-example.png)

Clicking the **View details** icon opens the *record page* for that dataset, showing its metadata, related records, and files.

## Record Details Page

![screenshot of a record page showing summary metadata and related sections.](/images/chaise-record-example.png)

A **record page** provides detailed information about a single record. It begins with a **Summary** section that lists key metadata fields.

> **Tip:** Metadata tags act as dynamic filters. Clicking a tag link—such as *Spatial Genomics* under *Experiment Type*—will open a new search showing all records with that attribute.

To the left is a **Sections** sidebar that links to the different content types available for the record (e.g., Thumbnails, Files, Related Records), along with their counts. This functions much like a table of contents for the page.

![screenshot of the Sections sidebar listing available record sections.](/images/chaise-record-sections-sidebar-example.png)

Clicking any of those links, for example *Thumbnail (6)*:

![screenshot showing selection of the Images link in the sidebar.](/images/chaise-record-sections-sidebar-select.png)

will take you directly to that section of the record page:

![screenshot showing the Images section of a record page.](/images/chaise-record-sections-sidebar-thumbnail.png)

> **Configurable:** The structure and order of sections, as well as the metadata displayed within each, can be controlled through model annotations.

## Exporting Data (CSV, BDBag, API)

![screenshot of FaceBase recordset export options.](/images/chaise-recordset-export-example.png)

You can download a CSV file of the metadata for the current search results by clicking the **Export** button and selecting *Search results (CSV)*.

Deployments may also offer options to export associated files for each dataset, either directly from a record page or programmatically in **BDBag** format. For more information, see [Managing Data in DERIVA with deriva-client](managing-data.html).

> **Configurable:** Export options, including which formats and data scopes are available, are determined by deployment settings and access permissions.

## Summary

Chaise provides a powerful and flexible interface for exploring complex scientific data models without requiring custom web development. Its behavior, appearance, and available data are determined by model annotations, making it adaptable for diverse domains.

While this guide uses FaceBase as an example, the same principles apply to any DERIVA-based deployment. Each instance of Chaise reflects its unique model, metadata, and community-specific vocabulary.
