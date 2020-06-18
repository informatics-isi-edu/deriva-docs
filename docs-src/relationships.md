# Organizing the relationships between the data

DERIVA is a platform for acquiring, organizing, discovering and managing collections of scientific data.

Often, the data we are concerned with is in a file. Typically, an investigation will involve many different files and file types.

For example, an investigator may have a set of image files from a recent experiment. For each image file, the investigator may create a spreadsheet or comma-separated value (CSV) file which describes the results of analysis on each image.  

Let's look at two ways to manage the data: the old way of organizing various files and directories and a new way via DERIVA that organizes the relationships between the data.

## Old Way: Ad hoc files and directories (i.e., Tree Hierarchy)

In a world without DERIVA, the investigator would try to manage all of the different files by creating a directory structure and file naming convention for each image/CSV pair. For example, they might give each image and CSV file the same file name, with different extensions (e.g. `image1.img` and `image1.csv`).  

After a while, they might have so many files that it's difficult to locate a particular piece of data. Or there might be different types of images each with a different file extension, so the investigator might create separate directories for the images and CSV so they don't have to rely on file extensions.

To keep track of where the images came from, you might have a more "meaningful" file name, like `mouse26.img`, and so on.  

If you want to share your data with a collaborator, you need to make sure that they understand your directory and file naming conventions, and if you want to make sure you are looking at the same data, you need to make sure no one updates the files that you are sharing.

[Talk about metadata entry in spreadsheets: Further, because CSV/spreadsheet files tend to allow free text entry, it's likely there will be inconsistent entries and data entry errors across all spreadsheets.]

It's not too hard to see how this strategy will become too complex very rapidly.

## New Way: Model and manage the relationships between data (Relational)

DERIVA helps manage the complexity by making it easy to **describe the relationships between different files** and use those descriptions to help find and share data of interest.  

Of course, there are many different types of files one might be interested in, and the relationships between those files might change over time, so DERIVA also makes it easy to **adapt to changing data types and relationships**. That allows the system to work with early-phase projects, before they have data, start with an initial model that makes sense. But as the project evolves over time and becomes more complex, or unexpected results and directions change the types and relationships of data, we can adapt the model to meet new needs.

DERIVA organizes data by specifying an explicit _data model_ using the well known _entity/relationship (ER)_ modeling approach. [This relational approach is part of most large, complex modern-day applications, such as online banking and online shopping.]

In DERIVA, an _entity_ is equivalent to the representation of a single unit of data that will be ingested into a particular DERIVA deployment. The ER model maps out relationships between these entities.

[Now here is where we could give a 'for dummies' approach to ER or link to a good tutorial video. these concepts are pretty integral to understanding DERIVA]

Within a deployment, DERIVA provides mechanisms for:
- creating and modifying an ER model,
- querying, adding and updating entities that conform to that model.  

The DERIVA platform uses _model introspection_ to continually track the current set of relationships between data and to adapt the user and programmatic interfaces to the current model.

DERIVA keeps track of both the data files (or _assets_) and the model that organizes the data.

[also speak to data integrity? DERIVA emphasizes use of controlled vocabularies for data entry; also many practices that ensure data validity and integrity]

flexible, efficient and highly scalable

## Elements of data model management in DERIVA

Modeling is action of creating the "blueprint" for the data and the relationships between data. This is done at the beginning of a DERIVA deployment but because of the adaptive nature of DERIVA, the model will be revisited and evolve over time.

[Data is split up among multiple tables that are related by common values.]

Assets (sequence of bytes) - this basically means the data (which usually equates to some kind of file.)

Catalog model
* schemas
    * tables
        * columns
            * key constraints

(somehow represent "foreign key constraints over existing columns and key constraints")

## Assets

One of the primary objectives of Deriva is to manage collections of _assets_. In Deriva, an asset is a blob, a sequence of bytes with some basic properties:

* It can be referred to by a globally unique resource name, i.e. a URL
* In general, the sequence will not change without the resource name changing
* It will often be characterized by a checksum which is computed from its contents
* It will have a known length
* It may have a convenient human understandable name

A Deriva catalog will generally contain one or more asset tables, which are then organized into more complex data descriptions to help interpret the different types of assets and figure out how assets relate to one another.

## The Catalog Model and catalog introspection

### Catalog

### Schema

### Table

A table as a concept is a practically universal concept so it's not difficult to understand tables, columns and rows in the realm of ERM [A table is the main storage device for data in a relational database] and is made up - not surprisingly of rows and columns.

### Columns

Vertical component [The structure of a table depends on how the columns are defined. Columns should correspond to a single value (i.e., if you need to store an address, you should have separate columns for the street address, city, state, etc. instead of combining them). This makes columns more flexible and easier to maintain.]

### Rows

Records as they are referred to in ERM,
horizontal component - includes the values stored across every column and are connected as a single unit.

### Constraints

## Representing entities in a catalog

In DERIVA, an _entity_ is represented by a _table_ in a _catalog_.  

The table has one column for each _attribute_ that describes a characteristic of the entity.  

TBD: example of such a table

## Representing relationships between entities

One of the fundamental features of DERIVA is its ability to describe the relationships between the tables that represent different entities (metadata or data assets/files).

tables. related tables.

What's the relationship between tables? look to foreign keys first to find details about the join relationships...

There are three different types of relationships in DERIVA.

Note that if you are familiar with relational databases, these will be very basic concepts for you.

These relationships also enforce "model rules" that maintain integrity of model and data (and DERIVA deployment).

### Cardinality

Minimum number of records that can be related and maximum number of records that can be related.

Minimum number of records is Optionality
Optionality = minimum allowed is 1 if required (must)
Optionality = minimum allows is 0 if optional (might)

Maximum number of records that can be related is Cardinality
Usually one or more.
If the maximum number of records that can be related is 1 (a product can have only one supplier), cardinality = 1
If the maximum number of records that can be related is more than 1 (a product can have more than one supplier), cardinality = n

Control Optionality w NULL (0) or NOT NULL (1)
Control Cardinality w constraints: Unique constraint = 1, No constraint = n

The "join type" between tables is dictated by the cardinality.

#### One-to-one (1:1) relationships

Each record in one table can be matched with exactly one record in the other table.

[WEAK?: Can be used with security - one table extends the data of another table, but with restricted information. Then special permissions can be applied to the table with restricted information. But the two tables can only be related to each other.]

#### One-to-many (1:m) relationships

Very common type of relationship. In real life, an example is that your one bank account has many transactions.

Inbound foreign key constraints /

same value used in different tables for different purposes where:

Customer table with Customer Id - which provides unique identifier for each customer

Order table with Customer ID - which identifies the customer who placed the order.

Their common value "Customer ID" can be used to "join" the two tables in a one to many relationship.

Each one Customer may have many Orders. But each Order may only have one Customer.

Foreign key: Between two tables, the column that appears in both and serves as the primary key (unique identifer) to establish a relationship between the tables (ugh!) - EXAMPLE - foreign key is a column that uniquely identifies a row in another table.

DIAGRAM

[some tools highlighted in the course - could use these when working with consortiums for the first time to help develop the model more quickly?]
lucidchart.com
https://sqldbm.com/Home/
https://dbdiagram.io/home
https://www.quickdatabasediagrams.com/

sqlfiddle.com (to test out sql code - schema etc)

#### Many-to-one (m:1) relationships
(this is just the flip side of 1:m relationship)

Outbound foreign key constraints

#### Many-to-many (m:n) relationships

The most general type of relationship we have is a many-to-many (m:n) in which any record *A* can be related to any number of records *B* and vice versa.  

A common example of this is in relating protocol steps to a sample.  Each sample might have multiple steps, while a specific step might be used to prepare more then one sample.

TBD: add real-world examples of this.

In DERIVA, m:n relationships are expressed using an _association table_, which has two foreign key constraints, one to each of the tables being related. Each row in the association table captures the relationship between one entity in each table. By repeating the same value in the first foreign key, we can have multiple entities in table two associated with a single entity in table one, and visa versa.

TBD: add diagram

To streamline interactions in the DERIVA UI, we try to identify when a table is acting as an association table. For this purpose, we look for _pure binary association tables_.  We say a table is pure binary if:

* It only has two foreign keys
* Those keys cannot have NULL values
* There is a primary key constraint on the two foreign keys; i.e., each pair must be unique.

If those conditions are met, we consider the table to be an association table and the user interface will take advantage of this fact to streamline various user interactions.

The table may have additional attributes, which can be used to describe additional characteristics of the relationship.
