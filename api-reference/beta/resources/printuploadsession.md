---
title: printUploadSession resource type
description: Represents an active upload session to add document data to a print job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printUploadSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an active upload session to add document data to a print job. Only one user/application can have an active upload session for a printDocument at any given time.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printdocument-get-uploadsession.md) | [printUploadSession](printuploadsession.md) | Read details of an upload session. |
| [Create](../api/printdocument-put-uploadsession.md) | [printUploadSession](printuploadsession.md) | Create an upload session to upload data to a [printDocument](printdocument.md). |
| [Upload data](../api/printdocument-put-uploadsession-value.md) | [printUploadSession](printuploadsession.md) | Upload data to a [printDocument](printdocument.md) by using an existing upload session. |
| [Delete](../api/printdocument-delete-uploadsession.md) | None | Read the properties and relationships of the printer object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printUploadSession's identifier. Read-only.|
|contentType|String|The MIME type of the document being uploaded. Read-only.|
|createdBy|[identitySet](identitySet.md)|The user and/or app that created the upload session. Read-only.|
|documentName|String|The name of the document being uploaded. Read-only.|
|expiryDateTime|DateTimeOffset|The upload session's expiration time. Read-only.|
|missingRanges|[integerRange](integerrange.md) collection|The required content ranges that have not yet been uploaded. Read-only.|
|size|Int64|The size of the document to be uploaded, in bytes. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printer",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "contentType": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "documentName": "String",
  "expiryDateTime": "String (timestamp)",
  "missingRanges": [{"@odata.type": "microsoft.graph.integerRange"}],
  "size": 123456
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->