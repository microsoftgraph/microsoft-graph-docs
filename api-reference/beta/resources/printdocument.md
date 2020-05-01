---
title: printDocument resource type
description: Represents a document being printed.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printDocument resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a document being printed.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get uploadSession](../api/printdocument-get-uploadsession.md) | [printUploadSession](printuploadsession.md) | Read details of an upload session. |
| [Create uploadSession](../api/printdocument-put-uploadsession.md) | [printUploadSession](printuploadsession.md) | Create an upload session to upload data to a [printDocument](printdocument.md). |
| [Delete uploadSession](../api/printdocument-delete-uploadsession.md) | None | Read the properties and relationships of the printer object. |
| [Upload data](../api/printdocument-post-uploadsession.md) | [printUploadSession](printuploadsession.md) | Upload data to a [printDocument](printdocument.md) by using an existing upload session. |
| [uploadData](../api/printdocument-uploaddata.md) | None | Upload a single binary segment of the **printDocument**. Deprecated. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The document's identifier. Read-only.|
|displayName|String|The document's name. Read-only.|
|mimeType|String|The document's MIME type. Read-only.|
|sizeInBytes|Int64|The document's size in bytes. Read-only.|
|documentConfiguration|[printerDocumentConfiguration](printerdocumentconfiguration.md) |A group of settings that a printer should use to print a document. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printDocument"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "mimeType": "String",
  "sizeInBytes": 12345,
  "documentConfiguration": {
    "pageRanges": [ {"@odata.type": "microsoft.graph.printPageRange"} ],
    "printQuality": "String",
    "printResolutionInDpi": 123456,
    "feedDirection": "String",
    "orientation": "String",
    "duplexConfiguration": "String",
    "copies": 123456,
    "colorConfiguration": "String",
  }
}

```
