---
title: "exactMatchDataStore resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# exactMatchDataStore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List exactMatchDataStores](../api/exactmatchdatastore-list.md)|[exactMatchDataStore](../resources/exactmatchdatastore.md) collection|Get a list of the [exactMatchDataStore](../resources/exactmatchdatastore.md) objects and their properties.|
|[Create exactMatchDataStore](../api/exactmatchdatastore-create.md)|[exactMatchDataStore](../resources/exactmatchdatastore.md)|Create a new [exactMatchDataStore](../resources/exactmatchdatastore.md) object.|
|[Get exactMatchDataStore](../api/exactmatchdatastore-get.md)|[exactMatchDataStore](../resources/exactmatchdatastore.md)|Read the properties and relationships of an [exactMatchDataStore](../resources/exactmatchdatastore.md) object.|
|[Update exactMatchDataStore](../api/exactmatchdatastore-update.md)|[exactMatchDataStore](../resources/exactmatchdatastore.md)|Update the properties of an [exactMatchDataStore](../resources/exactmatchdatastore.md) object.|
|[Delete exactMatchDataStore](../api/exactmatchdatastore-delete.md)|None|Deletes an [exactMatchDataStore](../resources/exactmatchdatastore.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|columns|[exactDataMatchStoreColumn](../resources/exactdatamatchstorecolumn.md) collection|**TODO: Add Description**|
|dataLastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sessions|[exactMatchSession](../resources/exactmatchsession.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exactMatchDataStore",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exactMatchDataStore",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "dataLastUpdatedDateTime": "String (timestamp)",
  "columns": [
    {
      "@odata.type": "microsoft.graph.exactDataMatchStoreColumn"
    }
  ]
}
```

