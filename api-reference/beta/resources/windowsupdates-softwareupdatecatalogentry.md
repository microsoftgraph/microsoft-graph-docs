---
title: "softwareUpdateCatalogEntry resource type"
description: "Metadata for a software update that you can approve for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# softwareUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for a software update that you can approve for deployment.

Inherits from [catalogEntry](../resources/windowsupdates-catalogentry.md). Base type for [featureUpdateCatalogEntry](../resources/windowsupdates-featureupdatecatalogentry.md) and [qualityUpdateCatalogEntry](../resources/windowsupdates-qualityupdatecatalogentry.md).

This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment using the service. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|releaseDateTime|DateTimeOffset|The release date for the content. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.catalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "deployableUntilDateTime": "String (timestamp)"
}
```

