# Creating, Editing and Deleting Records and Metadata

## Summary

Each deployment has a particular hierarchy of data records to describe data model.

Example: One common type of data model in DERIVA deployments focuses on Studies. A Study can have one or more Experiments. Each Experiment can have one or more Replicates and so on. In Chaise, the data submitter would first create the Study record. From the study record, the submitter then adds one or more Experiment records.

### Container record vs Related data

Each record starts as a “container” record. This contains the title and Summary of metadata.

Each record can then have related data linked to it. These are separate records that are either data directly related to that container record or that provide the next level of hierarchy in the data model.

In the above Study example. You first create a "Study" container record - this includes the title of the Study and metadata describing the overall study.

Once you have created that container record, you will find all of available Related Tables for that type of record. In this case we see available related tables for Experiment, Experiment Settings, etc.

Depending on the complexity of the data model, there can be a cascading hierarchy of records:

TBD

This configuration allows for deep interlinking between records (TBD Gene example?)

Let's use TBD as an example as we go through the different functions of managing data records and metadata in DERIVA Chaise.

## Obtaining editing access

The deployment administrator will have created a group in Globus that the submitter must join in order to create, edit or delete records and metadata in DERIVA Chaise.

In general, the process is:

### Obtain the link to your Globus group


### Choose your login method

When you click the link, you’ll see a Globus login page where you choose your identity provider. Choose one of the following and log in accordingly:

- Your institution’s credentials
- Google
- ORCID iD
- If none of the above are available to you, click the "Globus login" link to create your own username and password.

![screenshot of Globus login page.](/images/globus_signup.jpg)

Once you log in, you may need to fill out a short form about yourself (depending on the deployment's policies) and then you will need to provide consent for access to your credentials.

### Join group

You will now see the group page. Click "Join Group”.

screenshot

You may need to fill out another form. Once you are finished, click "Submit Application to Join"

You’ll receive an email notification that your membership is pending.

Once the administrator approves your application, you’ll receive email confirmation that your membership has been approved and you will now have access to the application.

### Log in

In the data browser, you can now click "Log in" using the credentials you chose above.

A cookie is place on your commputer that will automatically log you in on subsequent visits. Once the cookie is deleted or you are on another device, you will need to log in manually again.




## Creating records and metadata

To create a record, navigate to an existing record type in Chaise. For example, if you are creating a Study, navigate to an existing Study record in the Data Browser.

From there, click "Create". In our demo example, you will see a form like this:

TBD screenshot

Fill out the form and click Submit. Note that in this context, Submit will save the record, not submit it for release.

You have now created the "container" ("base"?) record.

Note: Depending on the deployment, there is usually some sort of release indicator determining whether something is viewable or not viewable to anonymous users (ie, the public). The default for records created in DERIVA is usually for them to not be viewable to the public until either the submitter or deployment administrator sets the field for further curation or release. View the documentation for your particular deployment.

### Importance of metadata in driving discovery

In short, fill out as many fields as you can.

People submitting data to DERIVA deployments are typically very busy and may tend to provide only the minimum required fields (determined per deployment as the minimal amount of metadata for the data to be useful to others) to save time.

At DERIVA, we encourage submitters to add as much metadata as possible as this not only provides the most complete picture of the data to end users but also ensures accurate interlinking between records and reproducibility of the data (see FAIR principles TBD).

### Linking related records in Sections

Once you've created the base record, now you can link in related  records in their own Sections. This may be records for data files or records of related terms, such as the gene(s) expressed, instruments used, related datasets, etc.

Sections will at first appear as empty tables below the Summary metadata section. They are also listed in the left sidebar marked "Sections"

TBD screenshot

To add a record, scroll to the Section and click "Add record". You will see another Create form. As you did above, fill out the form and click "Submit" to save your changes.

### Cloning records

TBD

### Copying records

TBD

## Editing records

TBD

### Editing the base record

TBD

### Editing the related tables

TBD

### Using Edit mode

TBD

### Editing multiple records at once

TBD

### Deleting records

You cannot delete a record until any related are records are 'unlinked'.

Related data (items in the sections below the Summary section) must be ‘unlinked’ (deleted) from the base record before you can delete it.
