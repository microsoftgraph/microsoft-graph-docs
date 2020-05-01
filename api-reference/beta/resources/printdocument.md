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

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The document's identifier. Read-only.|
|displayName|String|The document's name. Read-only.|
|contentType|String|The document's MIME type. Read-only.|
|size|Int64|The document's size in bytes. Read-only.|
|configuration|[printerDocumentConfiguration](printerdocumentconfiguration.md) |A group of settings that a printer should use to print a document. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|uploadSession|[printUploadSession](printuploadsession.md) collection|The upload session used to upload data to this document.|

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
  "displayName": "String",
  "contentType": "String",
  "size": 12345,
  "configuration": {"@odata.type": "microsoft.graph.printDocumentConfiguration"}
}

```
