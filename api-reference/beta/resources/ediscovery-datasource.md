---
title: "dataSource resource type"
description: "The dataSource entity is an abstract base class used to identify sources of content for eDiscovery."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# dataSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The dataSource entity is an abstract base class used to identify sources of content for eDiscovery.

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **dataSource**.|
|createdDateTime|DateTimeOffset|The date and time the **dataSource** was created.|
|displayName|String|The display name of the **dataSource**. This will be the name of the SharePoint site.|
|id|String| The ID of the **dataSource**. This is not the ID of the actual site.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.dataSource",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.dataSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)"
}
```
