---
title: "updates resource type"
description: "Entity that acts as a container for all Windows Update for Business deployment service functionality."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# updates resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that acts as a container for all Windows Update for Business deployment service functionality.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalog|[microsoft.graph.windowsUpdates.catalog](../resources/windowsupdates-catalog.md)|Catalog of content that can be approved for deployment by the deployment service. Read-only.|
|deployments|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|Deployments created using the deployment service. Read-only.|
|updatableAssets|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Assets registered with the deployment service that can receive updates. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.updates",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updates",
  "id": "String (identifier)"
}
```

