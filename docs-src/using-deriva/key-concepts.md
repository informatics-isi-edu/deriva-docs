# Key Concepts

## Representing relationships between data (ie, data modeling)

Per deployment, data must be organized in a model that describes different metadata, data types and their relationship to each other, usually to accurately represent the mechanics of actual experiments.

For example, in the demo model, x is the "parent" record with multiple possible Y...TBD

TBD ER diagram for demo model

For each assay type, different types of records are assigned to provide metadata, data files and other supplementary information that can help users discover the data, download data and reproduce experiments and studies as desired.

## What is a record?

A ‘unit’ of data is referred to as a **record**. Searches pull up related records and then you click the “View” icon to view that record page.

Records are interlinked so that many times on a record page, you will see sections for related records.

## FAIR Principles

As mentioned before (TBD link to About page), DERIVA promotes FAIR data production by:

* F: providing rich metadata using an Entity-Relationship model to express relationships between diverse data elements;
* A: offering rich access control and access to metadata via standard HTTP web service interfaces;
* I: integrating with standardized terms defined by collaborators, consortium or communities; and
* R: supporting dynamic model evolution so that the data presented accurately represents the current structure and state of knowledge within an investigation.

To support these principals, DERIVA emphasizes well-defined metadata and data models, the use of controlled vocabularies and ontologies, and any other ways to include enough measurable metadata for all data entered to allow the right data to show up in searches, and allow others to reproduce experiments, etc. TBD refine this...
