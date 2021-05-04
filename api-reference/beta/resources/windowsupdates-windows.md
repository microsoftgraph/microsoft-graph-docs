---
title: "windows resource type"
description: "Entity that acts as a container for Windows functionality."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# windows resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that acts as a container for Windows functionality.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|updates|[microsoft.graph.windowsUpdates.updates](../resources/windowsupdates-updates.md)|Entity that acts as a container for the functionality of the Windows Update for Business deployment service. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.windows",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.windows",
  "id": "String (identifier)"
}
```

