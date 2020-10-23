---
author: JeremyKelley
description: "Represents information for an iterative process to upload large files to OneDrive, OneDrive for Business, or SharePoint document libraries, or as file attachments to Outlook event and message objects."
title: "uploadSession resource type"
localization_priority: Normal
doc_type: "resourcePageType"
ms.prod: "non-product-specific"
---
# uploadSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information for an iterative process to upload large files to:

- OneDrive
- OneDrive for Business
- SharePoint document libraries
- Outlook [event](event.md) and [message](message.md) items as attachments
- Universal Print [printDocument](printdocument.md) items

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "uploadUrl", "nextExpectedRanges" ],
  "@odata.type": "microsoft.graph.uploadSession",
  "baseType": null
}-->

```json
{
  "uploadUrl": "String",
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRanges": ["String"]
}
```

## Properties


| Property	     | Type              |Description
|:-------------------|:------------------|:------------------------------------
| expirationDateTime | DateTimeOffset    | The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.
| nextExpectedRanges | String collection | When uploading files to document libraries, this is a collection of byte ranges that the server is missing for the file. These ranges are zero-indexed and of the format, "{start}-{end}" (e.g. "0-26" to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value "{start}", the location in the file where the next upload should begin.
| uploadUrl          | String            | The URL endpoint that accepts PUT requests for byte ranges of the file.

## See also

- [Attach large files to Outlook messages and events as attachments ](/graph/outlook-large-attachments)
- [Upload large files with an upload session](../api/driveitem-createuploadsession.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "UploadSession is used to provide information about large file uploads.",
  "section": "documentation",
  "tocPath": "Resources/UploadSession",
  "suppressions": []
}
-->


