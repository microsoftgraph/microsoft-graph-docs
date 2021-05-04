---
title: "publicInnerError resource type"
description: "Represents the inner details of an error."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# publicInnerError resource type

Namespace: microsoft.graph

Represents the inner details of a [publicError](../resources/publicerrordetail.md). 
## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code.|
|details|[publicErrorDetail](../resources/publicerrordetail.md) collection|A collection of error details.|
|message|String|The error message.|
|target|String|The target of the error.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.publicInnerError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.publicInnerError",
  "code": "String",
  "message": "String",
  "target": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.publicErrorDetail"
    }
  ]
}
```

