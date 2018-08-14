# DERIVA-Upload

## Launching `deriva-upload`

If you downloaded the zip file, find the application named DERIVA-Auth in your Application folder or wherever you saved the application.

If you built it from source (on Linux), run the command:

`deriva-upload`


## 1. Configure the server 
The tool will ask you if you want to add a server configuration. 

Click "yes" to bring up the "Options" screen (you can also do this at any time by clicking the "Options" button at the top of the page).

### Initial server configuration window

Click "Add" to bring up the "Server Configuration" form and enter these values:

Note: if you are working with a DERIVA deployment team (ie, the Informatics System Research Division at ISI), please work with them to determine the exact configuration parameters for the data server.

* _Host_: the destination server for your data. 
* _Description_: A human readable name for your destination server 
* _Catalog ID_: Check the "Set as Default" and "Confirm configuration updates" buttons, and click "OK"

img: Server configuration window

## 2. Upload your files
In the main Deriva-Upload window, click the "Login" button at the top to log in. This will pop up a login dialog window. 

Once you've logged in, you may see a window notifying you that an updated configuration is available and asking if you'd like to apply it; you should click "Yes" to update your configuration and dismiss the window.

img: Configuration update window

Next, in the main Deriva-Upload window, click the "Browse" button and select your `deriva` directory (note that you need to work with the developers of your DERIVA deployment to know exactly the hierarchy and naming convention the system requires). 

You'll see all the files you created, listed as "Pending", before you upload.

Click the "Upload" button to start the upload process. The status of each file will change as it's uploaded; for successful uploads, the status will change from "Pending" to "Complete".

