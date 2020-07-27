# Primary Components of DERIVA

Let's take a closer look at the primary components of a DERIVA deployment: ERMrest, Hatrac and Chaise.

## ERMrest - Data model manager/Metadata catalog

[ERMrest](ermrest/index.html) is an entity/relationship database web service that acts as a powerful _metadata catalog_ for the data. It enables rich data models and lets you create, then evolve data models that accurately represent the concepts of your domain.

ERMRest is a catalog service with a RESTful web services interface for:

* modifying and retrieving the ER model,
* creating and modifying new entities, and
* enforcing policies at row-level access, providing fine-grained security.

GRAPHIC

Scientific assets are organized and cataloged using an Entity Relationship Model (ERM) which is subject to frequent schema evolution and differential access control.

Assets may be digital objects (i.e. files) or references to physical objects, such as proteins, mice, or biosamples. Assets are characterized by contextual metadata which places an asset into the domain model by relating it to a specific entity. Additional metadata are used to enrich the descriptions and relationships between assets.

Relationships can be traversed as navigable links, enabling the user to interactively explore the data. Relationships can also be traversed via denormalized presentations of metadata about an entity.

Our approach allows each collaboration to customize and evolve their own ERM, enabling them to create detailed and meaningful metadata that is relevant to the changing needs of the collaboration.

## Hatrac - Object/asset store

Because DERIVA is used to support reproducible science, we generally assume that once an asset is made known to DERIVA (or ingested), its actual contents **will not change**. To ensure this, DERIVA uses an _object store_ called [Hatrac](hatrac/index.html) to hold assets.

Other object stores such as AWS S3 may also be used but in any case, DERIVA models generally assume that the asset can be referred to uniquely by a URL, and that the contents of the asset will not change.  DERIVA usually makes sure this is the case by **using checksums on every object**.

Hatrac provides:

* Assets are represented as web resources in RESTful service models.
* Guarantee of data fixity via immutability (non-jargon) and checksums to ensure data integrity.
* Versioning - tracks different versions of data in a non-destructive way.
* Hierarchical naming scheme
* Access Control Lists (ACLs)

GRAPHIC

## Chaise - Model-driven Web interface

The catalog and assets can be accessed directly using a RESTful web services interface.  However, to make it easy to use on a daily basis, DERIVA has a powerful, browser-based user interface called [Chaise](chaise/index.html). Chaise, a suite of web applications providing adaptive GUIs for scientists to search, browse, edit, organize, and share research data and metadata throughout the data lifecycle.

Chaise is a model-driven user interface (UI), which means that it uses _catalog introspection_ to dynamically adapt the UI to the current data model. Changes to the model, such as adding a new attribute or entity type, are immediately reflected in the user interface.

The Chaise UI is highly configurable to specify how data is presented, which entities should be displayed and in what order, and many other display elements.

To support this customization, Chaise uses an extensible set of [_annotations_](annotations/) that are stored in the catalog along with the data model; deployment admins may use these to create, alter or extend the domain model.

Users interact with the data (records) via the following capabilities:

* Search and browse (in a faceted search)
* Navigate between records
* Export collections of assets and metadata
* Share collections with others
* Annotate data.

SCREENSHOT
