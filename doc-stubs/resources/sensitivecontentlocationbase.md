---
title: "sensitiveContentLocationBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# sensitiveContentLocationBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|evidences|[sensitiveContentEvidence](../resources/sensitivecontentevidence.md) collection|**TODO: Add Description**|
|idMatch|String|**TODO: Add Description**|
|length|Int32|**TODO: Add Description**|
|offset|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sensitiveContentLocationBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitiveContentLocationBase",
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

