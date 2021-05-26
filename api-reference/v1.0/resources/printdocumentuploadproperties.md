---
author: nilakhan
description: "Represents information for print document upload"
title: "printDocumentUploadProperties resource type"
localization_priority: Normal
doc_type: "resourcePageType"
ms.prod: cloud-printing
---

# printDocumentUploadProperties resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Describes the document that is being uploaded

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|The document's content (MIME) type.|
|documentName|String|The document's name.|
|size|Int64|The document's size in bytes.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printDocumentUploadProperties"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printDocumentUploadProperties",
  "contentType": "String",
  "documentName": "String",
  "size": "Integer"
}
```

