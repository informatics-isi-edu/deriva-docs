# Model Annotations

Model **annotation** is used to augment the Entity-Relationship Model (ERM) in Deriva. 
Annotation is stored in ERMRest as convenient key-value pairs associated with each node in an ERM (e.g. schema, table, column, foreign keys, etc.) These allow software designers and data modelers to collaborate and experiment on more advanced presentation features by annotating parts of the ERM with machine-readable hints about semantics, desired presentation style or data handling methods. Model annotations enables us to tweak  presentation and improve user experiences while preserving more rational ERM choices, e.g. storing normalized entity and relationship data in ERMRest but presenting denormalized content on screen. It also allows Deriva to appropriately manage data during ingest and export. 

Model annotations are utilized in the following Deriva components:  
* ERMRestJS/Chaise uses annotations to support custom search and presentations.  
* ioboxd uses annotations to support file upload and export.

## Model Annotation
* [Model Annotation](https://github.com/informatics-isi-edu/ermrest/blob/master/docs/user-doc/annotation.md): Base annotation document describing all existing key-value pairs, their expected usage, as well as basic heuristics that the client applications should follow. Further detail as well as examples can be found in the following sections.

## Annotation support in Chaise/ERMRestJS
This section contains the main concepts and examples that annotations supported by Chaise/ERMRestJS.  

* [Contexts](https://github.com/informatics-isi-edu/chaise/blob/master/docs/user-docs/contexts.md): Contexts are used to specifine presentation modes e.g. compact, detailed, editing, selecting modal, etc. This document provides a list of contexts supported by Chaise.  

* Facet search : The facet search is controlled through the `filter` context in the `isrd.isi.edu,2016:visible-columns` annotation. The follow documents describe the JSON structure and examples of how to configure the annotation. 
  * [JSON structure](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/facet-json-structure.md)
  * [Examples](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/facet-examples.md)

* [Pseudo-Columns logic and heuristics](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/pseudo-columns.md): the pseudo-columns allow Chaise to present denormalized content of an entity by pulling data from multiple related tables through foreign key paths. Pseudo-columns can be defined as a column in the visible column list of the `isrd.isi.edu,2016:visible-columns` annotation. 

* [Table Alternatives](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/table-alternatives.md) : By using table-alternatives annotation, data modelers can define alternative table (or view) for different contexts. By definition, the table that you are adding this annotation to will be the base table and all the listed tables are alternative tables for this base table (Link to the initial issue). The document describes the constraints of what can be defined as table alternatives and how it can be used. We recommend that table alternatives should be used only if necessary.  

* Formating and presentation: Chaise/ERMRestJS provides flexibility for system administrators to customize the presentation of model elements and their corresponding data through the use of templating and markdown. Templating allows Chaise/ERMRestjs to compose displayed values based on patterns/templates consisting of different model elements such as column names, foreign keys, etc). Markdown allows the display to be styled differently e.g. bold text, embeded image/videos. ERMRestJS also supports customized formats of native data types such as float, integer through `PreFormat`. For example, a floating point number can be displayed with thousand separator with two decimals. The following documents provide detail and examples of mentioned features.     
  * [Templating and Markdown](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/template-markdown.md)
  * [PreFormat](https://github.com/informatics-isi-edu/ermrestjs/blob/master/docs/user-docs/pre-format.md)
  
* [Export](https://github.com/informatics-isi-edu/chaise/blob/master/docs/user-docs/export.md): Chaise/ERMRestJS is integrated with [ioboxd](https://github.com/informatics-isi-edu/ioboxd) to provide data export service. See the document on how to configure an export service. 

## Annotation support in ioboxd

The [ioboxd](https://github.com/informatics-isi-edu/ioboxd) service provides export functionality from an ERMrest catalog via a REST API. `isrd.isi.edu,2016:export` annotation in used to define how the data should be exported.

* [Export Annotation](https://github.com/informatics-isi-edu/ioboxd/blob/master/doc/integration.md)

