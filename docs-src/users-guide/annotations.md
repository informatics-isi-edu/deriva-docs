# Model Annotations

Model **annotation** is used to augment the Entity-Relationship Model (ERM) in Deriva. 
Annotation is stored in ERMRest as convenient key-value pairs associated with each node in an ERM (e.g. schema, table, column, foreign keys, etc.) These allow software designers and data modelers to collaborate and experiment on more advanced presentation features by annotating parts of the ERM with machine-readable hints about semantics, desired presentation style or data handling methods. Model annotations enables us to tweak  presentation and improve user experiences while preserving more rational ERM choices, e.g. storing normalized entity and relationship data in ERMRest but presenting denormalized content on screen. It also allows Deriva to appropriately manage data during ingest and export. 

Model annotations are utilized in the following Deriva components:  
* ERMRestJS/Chaise uses annotations to support custom search and presentations.  
* ioboxd uses annotations to support file upload and export.

## Model Annotation
* [Model Annotation](http://docs.derivacloud.org/ermrest/user-doc/annotation.html)

## Annotation support in Chaise/Ermrestjs
You can extend the default presentation of the Chaise web interface with annotations. 

* Facet 
  * JSON structure
  * Examples
  * [Facet Search](http://docs.derivacloud.org/ermrestjs/user-docs/facet-examples.html#)

* Pseudo-Columns logic and heuristics

* Table Alternatives

* Template and formating
  * Markdown (http://docs.derivacloud.org/ermrestjs/user-docs/template-markdown.html#markdown-formatting)
  * PreFormat
  * Support templatinging
    * [Mustache](http://docs.derivacloud.org/ermrestjs/user-docs/template-markdown.html#mustache-templating)
    * [Handlebars](http://docs.derivacloud.org/ermrestjs/user-docs/template-markdown.html#handlebars-templating)
    
* Export

## Annotation support in ioboxd
