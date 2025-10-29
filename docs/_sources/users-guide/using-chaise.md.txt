# Using the Chaise Data Browser

Chaise, sometimes referred to as the "Data Browser", serves the user interface for the data portal and provides views of the data based on the underlying data model and annotations. (For those with data submitter or administrator roles, you can learn how to manage the model and annotations in [Managing Catalogs](managing-catalogs.html).)

The Chaise interfaces represent data via records that can be filtered with attributes in the sidebar much like you would in an online shopping site.

**Note:** The Chaise Data Browser is configured for a particular deployment. We'll be using screenshots from the FaceBase (facebase.org) deployment to illustrate many common elements, but keep in mind that the actual records, columns and attributes displayed can be configured very differently according to context, domain, model, and other factors.

## Example of a recordset (search) page

![screenshot of FaceBase landing page.](/images/chaise-search-example.png)

Above is a typical example of a recordset (a.k.a., search) page. Common elements include:

* Filtering sidebar
* Search bar above the results
* Search results based on filters.

## Filtering sidebar

![screenshot of FaceBase filtering sidebar](/images/chaise-filter-sidebar-example.png)

The filtering sidebar is a configurable set of "facets". In the FaceBase example, it includes common elements of biomedical data of test specimen: experiment type, species, age stage, anatomy, etc. Within each facet are a set of attributes that are represented in the data. Deployments can choose which facets are open by default or to have all of them closed.

Selecting and de-selecting attributes in any of the facets will filter the results to show data with those attributes.

For filters with a long list of attributes, you can use the small search box within the filter to search across those attributes. You can also click *Show Details* to pull up a modal window to access all of the attributes.

## Search results view

![screenshot of FaceBase recordset view](/images/chaise-recordset-example.png)

The search results, in the main body of the page (outlined in red above), display columns of metadata for each search result. Deployments can configure which columns are shown and in which order. Column headers are sortable.

Use the larger search field above the search results to enter keywords to search across text in all of the visible columns.

![screenshot of FaceBase recordset export](/images/chaise-recordset-export-example.png)

You can download a CSV file of the metadata of search results by clicking the Export button and then "Search results (CSV)".

Deployments may include an option to export the entire set of files for each dataset in the search results or from a record page programmatically in BDBag format. For more information about using this option, please see [Managing Data in DERIVA with deriva-client](managing-data.html).

![screenshot of the View icon](/images/chaise-view-example.png)

Clicking the View details icon takes you to the "record" page which displays the metadata and related data and files for that particular record.

## Record page

The following screenshots show an example record page:

![screenshot of a record page](/images/chaise-record-example.png)

The record starts with a Summary section, which is a list of related metadata.

**Note:** The metadata "tags" are in turn filtered links - ie, if you click the tag link "Spatial Genomics" in the "Experiment Type" field, you would see a list of all relevant data with that attribute.

To the left is a "Sections" sidebar that links to the various types of content available for the record and their count. This works much like a Table of Contents.

![screenshot of the Contents sidebar](/images/chaise-record-sections-sidebar-example.png)

Clicking any of those links, for example "Thumbnail (6)":

![screenshot of clicking the Images link](/images/chaise-record-sections-sidebar-select.png)

will take you directly to that section of the page.

![screenshot of the Images section](/images/chaise-record-sections-sidebar-thumbnail.png)
