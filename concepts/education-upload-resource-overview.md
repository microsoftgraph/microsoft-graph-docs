---
title: "Education upload resource overview"
description: "Learn how to upload a file to an assignment or a submission resource using the education APIs in Microsoft Graph."
localization_priority: Normal
author: "sharad-sharma-msft"
ms.prod: "education"
doc_type: conceptualPageType
---

# Education upload resource overview

Resources are an integral part of [educationAssignment](/graph/api/resources/educationassignment.md) and [educationSubmission](/graph/api/resources/educationsubmission.md). 

Teacher determines the resources to upload in the assignment's folder, and a student determines the resources to upload in the submission's folder.

## Prerequisites

Setup a SharePoint folder to upload files for a given assignment or submission. 

| Action  |
|:--------|
| Setup a SharePoint folder for a given [educationAssignment](/graph/api/resources/educationAssignment.md) resource.|
| Setup a SharePoint folder for a given [educationSubmission](/graph/api/resources/educationSubmission.md) resource.|

## Upload a resource

This step requires you to have setup the relevant resource folders described in [prerequisites](#prerequisites). The `setUpResourcesFolder` API returns a model that contains the **resourcesFolderUrl** property.

```http
{
    ...
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GFA"
    ...
}
```

## Steps
The following example shows you how to upload a resource/file to a relevant resource folder.

### Step 1 - Construct the upload URL
Build the URL to upload content following this specific format `{resourcesFolderUrl}:/{Name of new file}:/content`. Here is what an upload URL built based on the previous sample that contains the **resourcesFolderUrl** property looks like:
```http
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
```

### Step 2 - Upload the resource to SharePoint
Execute a PUT request with the upload URL built in the previous step to upload the content.

The contents of the request body should be the binary stream of the file to be uploaded.

For more details, see [Upload large files with an upload session](/graph/api/driveitem-createuploadsession).

#### Example request
```http
PUT https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2:/MyPictureFile.png:/content
Content-Type: text/plain

Binary data for the file
```

#### Example response
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#drives('b%216SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F')/items/$entity",
    "@microsoft.graph.downloadUrl": "...",
    "createdDateTime": "2021-03-11T18:49:47Z",
    "eTag": "\"{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},1\"",
    "id": "01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
    "lastModifiedDateTime": "2021-03-11T18:49:47Z",
    "name": "MyPictureFile.png",
    "webUrl": "https://contososdorg.sharepoint.com/sites/GraphTest/Class%20Files/Assignments/Test%20File%20Distribution/MyPictureFile.png",
    "cTag": "\"c:{EDD00CE7-B74C-4C3E-BA3E-484CB41EF31D},2\"",
    "size": 2302233,
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "email": "t-james@contososd.org",
            "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
            "displayName": "James"
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "email": "t-james@contososd.org",
            "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
            "displayName": "James"
        }
    },
    "parentReference": {
        "driveId": "b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F",
        "driveType": "documentLibrary",
        "id": "01YT2AIJRQLVYT24IWWFAJHMRRNYCB3GE2",
        "path": "/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/root:/Assignments/Test File Distribution"
    },
    "file": {
        "mimeType": "image/png",
        "hashes": {
            "quickXorHash": "CvYQxN7MCGrIsdrA38c6wWhOu5g="
        }
    },
    "fileSystemInfo": {
        "createdDateTime": "2021-03-11T18:49:47Z",
        "lastModifiedDateTime": "2021-03-11T18:49:47Z"
    },
    "image": {}
}
```

### Step 3 - Construct the value for the fileUrl property
Build the value for the **fileUrl** property following this specific format `https://graph.microsoft.com/v1.0/drives/{drive-id}/items/{item-id}`. Replace the `{drive-id}` and `{item-id}` placeholders with the following values:
|Placeholder|Description|Example|
|---|---|---|
|`{drive-id}`|drive ID from the request URL used in step 2|b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F|
|`{item-id}`|item ID from the response body obtained in step 2|01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ|

Here is what a **fileUrl** built based on the format described looks like:
```http
https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ
```

### Step 4. Create educationAssignmentResource
This step describes how to upload a SharePoint resource to an assignment resources folder.

Use the `fileUrl` constructed in the previous step in the request body to [Create educationAssignmentResource](/graph/api/educationassignment-post-resources).

#### Example request 
```http
POST https://graph.microsoft.com/v1.0/education/classes/b07edbef-7420-4b3d-8f7c-d599cf21e069/assignments/48b80dff-452a-4108-bd85-fa0d84e39d0a/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
        "displayName": "Parts of a Sonnet"
    }
}
```

#### Example response
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('b07edbef-7420-4b3d-8f7c-d599cf21e069')/assignments('48b80dff-452a-4108-bd85-fa0d84e39d0a')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "ff1aafe4-ae89-49c3-8366-4b509f640d6a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "Parts of a Sonnet",
        "createdDateTime": "2021-03-11T18:35:40.6642039Z",
        "lastModifiedDateTime": "2021-03-11T18:35:40.6642039Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!6SQl0y4WHkS2P5MeIsSGpKwfynEIaD1OvPVeH4wbOp_1uyhNwJMSSpseJneB7Z4F/items/01YT2AIJU7DAXTU6XLOJGYWYMTGM5JT5UQ",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "42ff222c-571f-497c-a9d3-f77ea9ece327",
                "displayName": null
            }
        }
    }
}
```

You have now successfully uploaded a SharePoint resource to an assignment resources folder (and thus attached it to the associated assignment). You can follow similar steps to upload one or more student work resource(s). For more details, see [Create educationSubmissionResource](/graph/api/educationsubmission-post-resources).