---
title: "reviewSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reviewSet resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List reviewSets](../api/reviewset-list.md)|[reviewSet](../resources/ediscovery-reviewset.md) collection|Get a list of the [reviewSet](../resources/reviewset.md) objects and their properties.|
|[Create reviewSet](../api/ediscovery-reviewset-create.md)|[reviewSet](../resources/ediscovery-reviewset.md)|Create a new [reviewSet](../resources/ediscovery-reviewset.md) object.|
|[Get reviewSet](../api/ediscovery-reviewset-get.md)|[reviewSet](../resources/ediscovery-reviewset.md)|Read the properties and relationships of a [reviewSet](../resources/ediscovery-reviewset.md) object.|
|[Update reviewSet](../api/ediscovery-reviewset-update.md)|[reviewSet](../resources/ediscovery-reviewset.md)|Update the properties of a [reviewSet](../resources/ediscovery-reviewset.md) object.|
|[Delete reviewSet](../api/ediscovery-reviewset-delete.md)|None|Deletes a [reviewSet](../resources/ediscovery-reviewset.md) object.|
|[addToReviewSet](../api/ediscovery-reviewset-addtoreviewset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|queries|[reviewSetQuery](../resources/ediscovery-reviewsetquery.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.reviewSet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSet",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

