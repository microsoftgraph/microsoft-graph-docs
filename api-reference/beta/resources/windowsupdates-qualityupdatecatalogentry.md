---
title: "qualityUpdateCatalogEntry resource type"
description: "Metadata for a Windows 10 quality update that you can be approve for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# qualityUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for a Windows 10 quality update that you can be approve for deployment.

Windows 10 quality updates are released one or more times per month. These updates contain both security and quality fixes and are typically released on the second Tuesday of every month, though they may be released at any time. These updates are cumulative, so later versions always contain all previous fixes. Microsoft strongly recommends keeping devices current by installing the most recent quality updates as soon as they are available. 

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment using the service. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|isExpeditable|Boolean|Indicates whether the content can be deployed as an expedited quality update. Read-only.|
|qualityUpdateClassification|microsoft.graph.windowsUpdates.qualityUpdateClassification|The classification on the quality update. Supports a subset of the values for **qualityUpdateClassification**. Possible values are: `all`, `security`, `nonSecurity`. Read-only.|
|releaseDateTime|DateTimeOffset|The release date of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "deployableUntilDateTime": "String (timestamp)",
  "isExpeditable": "Boolean",
  "qualityUpdateClassification": "String"
}
```

