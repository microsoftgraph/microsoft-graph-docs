---
title: printDocument resource type
description: Represents a document being printed.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printDocument resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents a document being printed.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create upload session](../api/printdocument-createuploadsession.md) | [uploadSession](uploadsession.md) | Create an upload session to iteratively upload ranges of binary file of the **printDocument**. |
| [Download binary file](../api/printdocument-get-file.md) | Download Url | Download the binary file associated with the **printDocument**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The document's identifier. Read-only.|
|displayName|String|The document's name. Read-only.|
|contentType|String|The document's content (MIME) type. Read-only.|
|size|Int64|The document's size in bytes. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printDocument",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printDocument",
  "id": "String (identifier)",
  "displayName": "String",
  "contentType": "String",
  "size": "Integer"
}
```