# Browsing and Filtering Data

The outward facing component of DERIVA is Chaise,  a model-driven web interface for data discovery, analysis, visualization, editing, sharing and collaboration over tabular data (if you want to learn more about 'under the hood' architecture of DERIVA, see TBD).

Chaise is intended to support specific user interactions. For the purposes of this guide, we'll focus on the _data consumption_ interactions (to learn more about how a user would contribute data, see TBD):
* Search, explore, and browse collections of data
* Navigate from one data record to the next by following their relationships
* Explore and export data collections
* Share and cite data with other users or for use in publications

Chaise, sometimes referred to as the "Data Browser" or "Data Explorer" depending on the deployment, serves as the user interface for the data portal and provides views of the data based on the underlying data model and annotations. (For those with data submitter or administrator roles, you can learn how to manage the model and annotations in [TBD](#).)

The Chaise interfaces represent data via records that can be filtered with attributes in the sidebar much like you would in an online shopping site.

**Note:** Each Chaise Data Browser is configured for a particular deployment. We'll be using screenshots from a Demo catalog to demonstrate the common elements, but the actual data, columns and attributes displayed vary per context, domain, model, etc.

## Search results page

![screenshot of the landing page.](/images/chaise-landing-page-example.jpg)

Above is a typical search results example (sometimes referred to as the landing page). Common elements are:

* Filtering sidebar
* Search bar above the results for free text search.
* Search results based on filters.


### Using the filtering sidebar

The filtering sidebar is a configurable set of "facets", in this example, common elements of biomedical data of test specimen: organism, age stage, anatomy, etc. Within each facet are a set of attributes that are represented in the data.

#### Selecting filters

Selecting and de-selecting attributes in any of the facets will filter the results to show data with those attributes.

![screenshot of FaceBase filtering sidebar](/images/chaise-filter-sidebar-example.jpg)

The above screenshot shows that when you select the "XXX" attribute from the "XXX" filter, the number of records shown changes from XXX records to XXX records of human data sets.

Also, notice that when you choose a filter, the filter choices appear above the search results.

TBD screenshot that circles selected filter chiclets

#### Searching attribute within filters

Reference this https://www.gudmap.org/help/querying-data-browser/

When there's more than a few attributes, you can use some searching techniques to quickly find what you're looking for.

Use the small search box within the filter to search across those attributes.

TBD screenshot

Click "Show Details" to pull up a window to access all of the attributes.

TBD animated GIF

Within that window, you can also open its own filtering sidebar to further refine attribute search.

TBD animated GIF


#### Expanding/collapsing filters

If the filtering sidebar is long, you can manage which filters are shown by clicking the down and up arrow, as shown below, to expand and collapse the filters:

TBD Screenshot of filtering sidebar - or animated GIF showing toggling filter open and closed.

#### Clearing filters

If you want to clear a filter, click the X icon next to the filter's name.

TBD screenshot

You can also click "Clear all filters" to remove them all.

TBD screenshot

### Main search results

The current search results are in the main body of the page. You can also browse and refine the results from this area.

#### Free text searching

Note the larger search field above the search results. Enter a keyword or key phrase to search across text in all of the visible columns.

![screenshot of example recordset search](/images/chaise-recordset-search-example.jpg)

#### Sorting columns

Some columns are configured to be sort-able. To identify which columns you can sort, look for the double arrow icon [TBD icon] and click to toggle the column sort between ascending and descending.

TBD screenshot or animated GIF


## Detail page (or Record page?)

From the search results, click the View icon to open the "Detail" or "Record" page. This displays the metadata and links to the other related records and data files as available.

The following screenshots show an example record page from our example repository:

![screenshot of a record page](/images/chaise-record-example.jpg)

### Summary section

The page starts with a Summary section that lists available metadata.

### Related data sections

Further down are sections for related data. These are other data records that are linked to this one.

For example, in the demo repository a Study record is linked to one more Experiments, which show up in the "Experiments" section.

TBD screenshot of Study record page highlighting the Experiments section.

This connection and linkage between data records is one of the powerful features of DERIVA that allows for broader discovery of data rather than a flat listing of information.

### Refine search column

The left sidebar is a 'Table of Contents' of sorts for the record page. Every section is linked there and you can click to go directly to that section.

TBD screenshot of Refine search column

### “Explore data” option on related data

TBD
