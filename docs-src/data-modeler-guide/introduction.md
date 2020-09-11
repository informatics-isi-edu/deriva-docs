# Introduction for Data Modelers


Introduce the concept of a data modeler - and then the important behind the scenes work of a DM including updating data models, creating and editing annotations, etc.

The creation and updating of the data model is a very important part of a DERIVA deployment. But let's start at the beginning of a simple deployment.

In order to determine what tables you need and what columns you should include, you need to:

* know what needs to be stored.
* think about how end users will likely try to find the data - ie what are the logical starting points, what are they going to be looking for the most?
* what reports or metrics will you likely want or need from the data?
* primary keys: unique forever, look for unique identifiers already in your data (Lot ID, serial numbers, etc.)

Then you need to think about how this data could be grouped into tables.

[picked up from a course: think of the tables as 'nouns' and the columns as 'adjectives']

[team: any tips you have for organizing deployment/domain data into a model? ie, use sticky notes or index cards for column ideas and then pile them into tables? or entity relationship diagram]

The display of related entities denormalizes a set of child records, i.e. those with a foreign key reference, into a parent page, i.e. the one being referenced.

Chaise automatically detects binary associations and displays associated records in the same way.

Additionally, we allow **data modelers** to define search facets, custom related entities, and pseudo-columns which extend these notions over a path of connected foreign keys.
