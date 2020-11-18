---
title: "fido2KeyRestrictions resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# fido2KeyRestrictions resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aaGuids|String collection|**TODO: Add Description**|
|enforcementType|fido2RestrictionEnforcementType|**TODO: Add Description**. Possible values are: `allow`, `block`, `unknownFutureValue`.|
|isEnforced|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fido2KeyRestrictions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2KeyRestrictions",
  "isEnforced": "Boolean",
  "enforcementType": "String",
  "aaGuids": [
    "String"
  ]
}
```

