---
title: "exactMatchDetectedSensitiveContent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# exactMatchDetectedSensitiveContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|confidence|Int32|**TODO: Add Description** Inherited from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).|
|displayName|String|**TODO: Add Description** Inherited from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).|
|id|Guid|**TODO: Add Description** Inherited from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).|
|matches|[exactMatchSensitiveContentLocation](../resources/exactmatchsensitivecontentlocation.md) collection|**TODO: Add Description**|
|recommendedConfidence|Int32|**TODO: Add Description** Inherited from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).|
|uniqueCount|Int32|**TODO: Add Description** Inherited from [detectedSensitiveContentBase](../resources/detectedsensitivecontentbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exactMatchDetectedSensitiveContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exactMatchDetectedSensitiveContent",
  "id": "String (identifier)",
  "displayName": "String",
  "uniqueCount": "Integer",
  "confidence": "Integer",
  "recommendedConfidence": "Integer",
  "matches": [
    {
      "@odata.type": "microsoft.graph.exactMatchSensitiveContentLocation"
    }
  ]
}
```

