# Adapting the User Experience with Annotations

Having and storing a diverse and rich set of data is one thing. How you present so people can actually use it is another - and that's where model annotations come in.

In DERIVA, there are two basic categories of users:

- People using the web interface (Chaise) to search, browse for and download data.
- Data submitters who are submitting the datasets, data files and supplementary resources.

The key to adapting the user experience in DERIVA to fit a domain - for example, a consortium of kidney researchers who must share a diverse scope of biomedical data with the community - is annotations.

Model **annotation** is used to augment the Entity-Relationship Model (ERM) in DERIVA.

Annotation is stored in ERMRest as convenient key-value pairs associated with each node in an _ERM_ (e.g. schema, table, column, foreign keys, etc.) These allow software designers and data modelers to collaborate and experiment on more advanced presentation features by annotating parts of the ERM with machine-readable hints about semantics, desired presentation style or data handling methods.

Model annotations enable us to tweak the presentation and improve user experiences while preserving more rational ERM choices, e.g. storing normalized entity and relationship data in ERMRest but presenting denormalized content on screen. It also allows DERIVA to appropriately manage data during ingest and export.

Model annotations are utilized in the following DERIVA components:  
* ERMRestJS and Chaise use annotations to support custom search and how the information is displayed.  
* IOBoxD uses annotations to support file upload and export.

## Basic Annotations Procedure (TBD)

(Describe the basic procedure for creating? and updating annotations)

## Base Model Annotation

* [Base Model Annotation](annotation.md): This page describes all existing key-value pairs, their expected usage, as well as basic heuristics that the client applications should follow. Further details as well as examples can be found in the following sections.

## Annotation support in Chaise/ERMRestJS

This section contains the main concepts and examples of annotations supported by Chaise/ERMRestJS.

### Contexts

Contexts are used to specify **presentation modes**, e.g. compact, detailed, editing, selecting modal, etc. This document provides a list of supported contexts.  

  * [Contexts](contexts.md)

### Facet search

The **facet search** is controlled through the `filter` context in the `isrd.isi.edu,2016:visible-columns` annotation. The following documents describe the JSON structure and examples of how to configure the annotation.

  * [JSON structure](facet-json-structure.md)
  * [Examples](facet-examples.md)

### Formatting and presentation

Chaise/ERMRestJS provides flexibility for system administrators to **customize the presentation of model elements and their corresponding data through the use of templating and markdown**.

*Templating* allows Chaise/ERMRestJS to compose displayed values based on patterns/templates consisting of different model elements such as column names, foreign keys, etc.

*Markdown* allows the display to be styled differently, e.g. bold text, embedded image/videos, etc. ERMRestJS also supports customized formats of native data types such as float or integer through `PreFormat`. For example, a floating point number can be displayed with a thousand separator and two decimals. The following documents provide details and examples of these features.

  * [Templating and Markdown](template-markdown.md)
  * [PreFormat](pre-format.md)

### Pseudo-columns logic and heuristics  

The pseudo-columns allow Chaise to present denormalized content of an entity by pulling data from multiple related tables through foreign key paths.

Pseudo-columns can be defined as a column in the visible column list of the `isrd.isi.edu,2016:visible-columns` annotation.

  * [Pseudo-Columns logic and heuristics](pseudo-columns.md)

### Table Alternatives

By using *table-alternatives annotation*, data modelers can define an alternative table (or view) for different contexts.

By definition, the table that you are adding this annotation to will be the *base table* and all the listed tables are *alternative tables* for this base table (Link to the initial issue).

[This page](table-alternatives.md) describes the constraints of what can be defined as table alternatives and how it can be used. **We recommend that table alternatives should be used only if necessary**.  

  * [Table Alternatives](table-alternatives.md)

### Export

Chaise/ERMRestJS is integrated with [IOBoxD](https://github.com/informatics-isi-edu/ioboxd) to provide data export service. See the document on how to configure an export service.

  * [Export](export.md)

_Note: Please refer to the [base model annotation document](annotation.md) for annotation details not presented here._

## Annotation support in ioboxd

The [ioboxd](https://github.com/informatics-isi-edu/ioboxd) service provides export functionality from an ERMrest catalog via a REST API. The  `isrd.isi.edu,2016:export` annotation in used to define how the data should be exported.

  * [Export Annotation](https://github.com/informatics-isi-edu/ioboxd/blob/master/doc/integration.md)
