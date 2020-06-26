Example Data Model: tutorial.derivacloud.org
====================

To help demonstrate the principles in these guides, we'll use the data model in an example deployment you can find at `<https://tutorial.derivacloud.org/>`_

The following diagram describes the data model in this sample deployment. The different *entities* are organized around the  ``Data:Study`` (which corresponds to a study that a lab would conduct).

.. raw:: html
    :file: images/tutorial-data-model.svg

TBD: need legend - what's the difference between rectangles and circles? Also, can we use the terms that are visible on the tutorial site? Ie - the user sees "Study" not "Data:Study".

``Data:Study`` includes ``Data:Experiment`` entities which include ``Data:Replicate`` entities. The replicates in their turn are linked to ``Data:Specimen`` entities.

Note about ``Data:Collection``: The greyed-out connection between ``Data:Study`` and ``Data:Collection`` is there to represent that a study can be part of a collection. A ``Data:Collection`` contains one or more studies or entities from studies to create a separate, citable instance - ie, for publications, collaborations or any situation where it is useful to have a single link to a set of data that isn't contained within a single study.

REVIEW: Add examples
