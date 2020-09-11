# Key Concepts for Data Submitters


## Data Submission Overview

DERIVA uses a self-serve process for data submission that includes a combination of online forms for metadata entry and a few options for uploading data that include online forms, GUI and commandline client.

## Deployment-specific considerations

Because of DERIVA's flexibility, there are many aspects of data submission that will be configured specifically for a deployment. They include:

* Who can submit data
* Supported and required data types
* Underlying data model

As an example, we'll be using the Demo deployment's data model and then provide instructions for submitting sample data to give you an idea of how data submission in DERIVA works.

### Data model

The underlying data model of a DERIVA deployment could represent practically anything from business widgets to social networks - in any case where there is more than one entity with relationships between them.

In general, data models of DERIVA deployments center around those useful for biomedical science. The [Demo deployment](https://tutorial.derivacloud.org) uses a simple version of such a model that we'll use to demonstrate how the data model impacts data submission.

Where:

- **Collection**: represents an adhoc unit of any records from within the DERIVA deployment. This can be useful for grouping data together from a publication in order to create one citable location to reference all of the source data.
- **Study**: represents a sequencing or metabalomics study - a whole or a logical unit of an investigation (i.e., a study within an overall investigation/project).
- **Experiment** (a.k.a., assay): represents an experiment at a fine-grained unit of detail. It is intended to broadly cover multiple "bioinformatics" (i.e., sequencing or array) and imaging (i.e., various forms of microscopy) assay types. An experiment will generally be conducted on multiple biological replicates. An experiment may reference another experiment as its "control."
- **Replicate**: represents the association between an Experiment and a Specimen. To keep things simple for data entry and display, the 'replicate' has simple numeric columns to record the "biological replicate number" and "technical replicate number."
- **File**: represents a data file. In this model, there are no restrictions on what types of files may be added. However, usually with a particular deployment there are requirements and restrictions to what files a submitter may upload.
- **Specimen**: represents the biological specimen used in the experiment (i.e, mouse tissue). This does not represent the actual tissue itself (as in a Tissue Bank) but is the record that represents and contains information about that specimen.

### Vocabulary

DERIVA places an emphasis on using controlled vocabularies where possible. This results in many dropdown fields in data entry instead of the user coming up with their own terms.

### Data types

Most data files in the Demo deployment should be associated with a Replicate entity. Again, for a particular DERIVA deployment, consult the documentation to find out what data types are required or requested, according to the domain.

In general, DERIVA encourages submission of raw data files and then, where possible or logical, may include pipelines for processed the data to perform analysis or generate visualizations.

Types of data consumed by DERIVA to date have included (the following is the list for FaceBase - need to integrate info from RBK/GUDMAP):

- Sequencing Data: "raw" sequencing data (fastq files).
- Processed Data: data that are derived from sequencing data through a particular pipeline. Usually fastqc reports (.fastqc.tgz or .fastqc.zip), count files (.count, .tpm, .fpkm), measures in tab-separated format (.tsv), and of course alignment mapping files (.bam) and indexes (.bam.bai).
- Track Data: data that are derived from sequencing or processed data and used in genome browsers, such as BED (.bed), bigBed (.bb), and bigWig (.bw) files.
- Array Data: "raw" microarray data (CEL files). These must be gzipped and use the '.CEL.gz' file extension.
- Imaging Data: high-resolution 3D or 2D imaging data, such as micro-CT accepted in NIfTI format gzipped (.nii.gz), confocal or other microscopy sources in TIFF or OME-TIFF (.tiff or .ome.tiff), and other sources in JPEG (.jpg or .jpeg).
- Surface Model / Mesh Data: 3D surface models (a.k.a., "polygon mesh" files) that are generally derived from hard tissue imaging data. Currently, we only accept Wavefront OBJ format and it must be gzipped (.obj.gz). If you want these files to be visible online in the Hub's online mesh viewer, we strongly advise that you limit the size of any model (which may include more than one obj.gz mesh object) to under 10 MB. The entire model must be downloaded to the user's browser in order to view, and therefore larger models can be prohibitively time consuming to download for users on slower networks. Multiple mesh data entities can be associated with each imaging data entity. Note that _human subjects_ "mesh" files are handled through a completely separate and secure data upload process and released only under approval of our Data Access Committee (DAC).
- Thumbnails: smaller images that give a representation of imaging data. These thumbnails are displayed online in the Hub's data browser and do not require login for users to view and therefore a good way of showing users enough about the images to encourage them to login (or signup) and download your data.  Multiple thumbnails can be associated with each imaging data entity.

### References to External Data and Visualization

Some deployments include references to external sources of data and visualizations. For example, a GWAS study may have produced or reused genomic data submitted to dbGaP, in addition derived results would have been generated from the original data, and the derived data may have been submitted to [LocusZoom](http://locuszoom.org/) for online visualization.

In cases such as these, submitters still create a record with a clear description of the data that includes accession numbers to data at external repositories (e.g., dbGaP) and Web references to the visualizations of the data using the `[label](url)` syntax available in the Description field; e.g., `[View results for ABC](https://example.org/to/abc)`.
