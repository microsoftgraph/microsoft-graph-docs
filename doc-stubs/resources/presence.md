---
title: "presence resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# presence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List presences](../api/presence-list.md)|[presence](../resources/presence.md) collection|Get a list of the [presence](../resources/presence.md) objects and their properties.|
|[Create presence](../api/presence-create.md)|[presence](../resources/presence.md)|Create a new [presence](../resources/presence.md) object.|
|[Get presence](../api/presence-get.md)|[presence](../resources/presence.md)|Read the properties and relationships of a [presence](../resources/presence.md) object.|
|[Update presence](../api/presence-update.md)|[presence](../resources/presence.md)|Update the properties of a [presence](../resources/presence.md) object.|
|[Delete presence](../api/presence-delete.md)|None|Deletes a [presence](../resources/presence.md) object.|
|[setPresence](../api/presence-setpresence.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|String|**TODO: Add Description**|
|availability|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|outOfOfficeSettings|[outOfOfficeSettings](../resources/outofofficesettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.presence",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.presence",
  "id": "String (identifier)",
  "availability": "String",
  "activity": "String",
  "outOfOfficeSettings": {
    "@odata.type": "microsoft.graph.outOfOfficeSettings"
  }
}
```

