---
title: "exactMatchSensitiveContentLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# exactMatchSensitiveContentLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [sensitiveContentLocationBase](../resources/sensitivecontentlocationbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|evidences|[sensitiveContentEvidence](../resources/sensitivecontentevidence.md) collection|**TODO: Add Description** Inherited from [sensitiveContentLocationBase](../resources/sensitivecontentlocationbase.md).|
|idMatch|String|**TODO: Add Description** Inherited from [sensitiveContentLocationBase](../resources/sensitivecontentlocationbase.md).|
|length|Int32|**TODO: Add Description** Inherited from [sensitiveContentLocationBase](../resources/sensitivecontentlocationbase.md).|
|offset|Int32|**TODO: Add Description** Inherited from [sensitiveContentLocationBase](../resources/sensitivecontentlocationbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exactMatchSensitiveContentLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exactMatchSensitiveContentLocation",
  "idMatch": "String",
  "offset": "Integer",
  "length": "Integer",
  "evidences": [
    {
      "@odata.type": "microsoft.graph.sensitiveContentEvidence"
    }
  ]
}
```

