# Key Concepts

Deriva is a platform for acquiring, orginizing, discovering and managing collections of scientific data.  Often, the data we are concerned with is in a file. Typically, an investigation will involve    many differnt files and file types.  For example, we may have a set of image files, and for each image file a spreadsheet (or comma seperated value file) which describes the results of analysis on each image.  

In a world without Deriva, the investator would try to manage all of the different files by creating a directory structure and file nameing convention for each image/CSV pair.  For example, one might give each image and CSV file the same file name, with different extensions (e.g. image1.img and image1.csv).  You might have so many files that its hard to find them, or there might be different types of images each with a different extension, so you might create seperate directories for the images and CVS so you don't have to rely on file extensions.  To keep track of where the images came from, you might have a more "meaningful" file name, like mouse26.img, and so on.  If you want to share your data with a collaborator, you need to make sure that they understand your directory and file naming conventions, and if you want to make sure you looking at the same data, you need to make sure no one updates the files that you are sharing.  Its not too hard to see how this strategy will get too conplex very rapidly.

Deriva helps manage the complexity by making it easy to describe the relationships between different files and use those descriptions to help find and share data of interest.  Of course, there are many different types of files one might be interested in, and the relationships between those files might change over time, so Deriva also makes it easy to adapt to changing data types and relationships.

Deriva originizes data by allowing one to specificy an explicit _data model_ using the well known _entity/relationship_ (ER) modeling approch.  Deriva provides mechinisms for creating and modifying an ER model, as well as methods for querying, adding and updating entitys that conform to that model.  The Deriva platform uses _model introspection_ to continuously track  out what the current set of relationships are between data and to adapt the user and programatic interfaces to the current model.

Dervia keeps track of both the data files and the model that orginizes the data. We refer to the data as as _asset_.  Because Dervia is used to support reproducable science, we generally assume that once an asset is made known to Deriva (or ingested), its actual contents will not change. To ensure this, Derive uses an _object store_ called HATRAC to hold assets.  Other object stores such as AWS S3 can also be used.  Deriva models generally assume however, that the asset can be refered to uniquely by a URL, and that the contents of the asset will not change.  Deriva usually makes sure this is the case by using checksums on every object.

The data model as well as instance information about specific entities are stored in a _data catalog_ which is called ERMRest. ERMRest is a catalog services that has a Web interface that enables the ER model to be modified, retrieved, new entities to be created or modified, and policy to be specified.  Each ERMRest service is referred to by a URL in the form https://mycatalog.isi.edu/ermrest/1.   Deriva allows many catalogs to co-exist and each catalog is refered to by an integer catalog id, so we might also have https://mycatalog.isi.edu/ermrest/2.

The catalog and assets can be accessed directly using the web services interface.  However, to make it easy to use Dervia on a daily basis, Deriva has a powerful, browser based user interface called _Chaise_. Chase is a model driven UI, which means that it uses catalog introspection to dynamically adapt the UI to the current data model. Changes to the model, like adding a new atribute or entity type are immediately reflected in the user interface. The Chaise UI is highly configurable allowing changes in how data is presented, which entities should be displayed and in what order, and many other display elements. To support this customization, Chaise uses an extensible set of _annotations_ that are stored in the catalog along with the data model. 

Deriva also has a programatic interface written in Python called _deriva-py_.
it is more convienient to use the Python SDK 

# The Catalog Model

Catalog, schema, table, columns, constraints

## Relationships in Deriva
