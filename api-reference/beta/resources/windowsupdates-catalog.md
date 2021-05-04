---
title: "catalog resource type"
description: "Entity representing the catalog of content that you can approve for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# catalog resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity representing the catalog of content that you can approve for deployment.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List entries](../api/windowsupdates-catalog-list-entries.md)|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) collection|Get the [catalogEntry](../resources/windowsupdates-catalogentry.md) resources from the entries navigation property. Returns **catalogEntry** resources of the following derived types: [featureUpdateCatalogEntry](../resources/windowsupdates-featureupdatecatalogentry.md), [qualityUpdateCatalogEntry](../resources/windowsupdates-qualityupdatecatalogentry.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the catalog. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|entries|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) collection|Lists the content that you can approve for deployment. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.catalog",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalog",
  "id": "String (identifier)"
}
```

