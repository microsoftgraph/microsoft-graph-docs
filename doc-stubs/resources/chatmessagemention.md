---
title: "chatMessageMention resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# chatMessageMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|Int32|**TODO: Add Description**|
|mentioned|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|mentionText|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageMention"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageMention",
  "id": "String (identifier)",
  "mentionText": "String",
  "mentioned": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

