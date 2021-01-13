---
title: "publicErrorDetail resource type"
description: "Represents the details of an error."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# publicErrorDetail resource type

Namespace: microsoft.graph

Represents the details of [publicError](../resources/publicerror.md) or [publicInnerError](../resources/publicinnererror.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code.|
|message|String|The error message.|
|target|String|The target of the error.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.publicErrorDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.publicErrorDetail",
  "code": "String",
  "message": "String",
  "target": "String"
}
```

