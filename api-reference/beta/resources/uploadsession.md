---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: UploadSession
---
# UploadSession resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **UploadSession** resource provides information about how to upload large files to OneDrive, OneDrive for Business, or SharePoint document libraries.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "uploadUrl", "nextExpectedRanges" ],
  "@odata.type": "microsoft.graph.uploadSession"
}-->

```json
{
  "uploadUrl": "https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337",
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["0-"]
}
```

## Properties


| Property	     | Type              |Description
|:-------------------|:------------------|:------------------------------------
| expirationDateTime | DateTimeOffset    | The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.
| nextExpectedRanges | String collection | A collection of byte ranges that the server is missing for the file. These ranges are zero indexed and of the format "start-end" (e.g. "0-26" to indicate the first 27 bytes of the file).
| uploadUrl          | String            | The URL endpoint that accepts PUT requests for byte ranges of the file.

## Additional Resources

See [Upload large files with an upload session](../api/driveitem_createuploadsession.md) for details on how to upload files using an upload session.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UploadSession is used to provide information about large file uploads.",
  "section": "documentation",
  "tocPath": "Resources/UploadSession"
} -->
