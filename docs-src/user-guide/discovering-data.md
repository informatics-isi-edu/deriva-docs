# Browsing and Filtering Data

The outward facing component of DERIVA is Chaise,  a model-driven web interface for data discovery, analysis, visualization, editing, sharing and collaboration over tabular data (if you want to learn more about 'under the hood' architecture of DERIVA, see TBD).

Chaise is intended to support specific user interactions. For the purposes of this guide, we'll focus on the _data consumption_ interactions (to learn more about how a user would upload data, see the [Data Submitter's Guide](../data-submitter-guide/introduction.html)):

* Search, explore, and browse collections of data
* Navigate from one data record to the next by following their relationships
* Explore and export data collections
* Share and cite data with other users or for use in publications

Chaise, sometimes referred to as the "Data Browser" or "Data Explorer" depending on the deployment, serves as the user interface for the data portal and provides views of the data based on the underlying data model and annotations. (For those with data modeler roles, you can learn how to manage the model and annotations in the [Data Modeler's Guide](../data-modeler-guide/introduction.html).)

The Chaise interfaces represent data via records that can be filtered with attributes in the sidebar much like you would in an online shopping site.

**Note:** Each Chaise Data Browser is configured for a particular deployment. We'll be using screenshots from our [Demo deployment](https://tutorial.derivacloud.org/) to demonstrate the common elements, but the actual data, columns and attributes displayed vary per context, domain, model, etc.

Main page types in Chaise for users:

* [Search page](search-page.html) - This page shows the records available in the deployment and the records that match filters.
* [Detail page](detail-page.html) - This page shows the details for an individual record and its related tables.
