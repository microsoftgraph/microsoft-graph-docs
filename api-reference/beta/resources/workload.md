---
title: "workload resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# workload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workloads](../api/workload-list.md)|[workload](../resources/workload.md) collection|Get a list of the [workload](../resources/workload.md) objects and their properties.|
|[Create workload](../api/workload-post-workloads.md)|[workload](../resources/workload.md)|Create a new [workload](../resources/workload.md) object.|
|[Get workload](../api/workload-get.md)|[workload](../resources/workload.md)|Read the properties and relationships of a [workload](../resources/workload.md) object.|
|[Update workload](../api/workload-update.md)|[workload](../resources/workload.md)|Update the properties of a [workload](../resources/workload.md) object.|
|[Delete workload](../api/workload-delete.md)|None|Deletes a [workload](../resources/workload.md) object.|
|[List informationProtectionPolicy](../api/workload-list-policy.md)|[informationProtectionPolicy](../resources/informationprotectionpolicy.md) collection|Get the informationProtectionPolicy resources from the policy navigation property.|
|[Create informationProtectionPolicy](../api/workload-post-policy.md)|[informationProtectionPolicy](../resources/informationprotectionpolicy.md)|Create a new informationProtectionPolicy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[informationProtectionPolicy](../resources/informationprotectionpolicy.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workload",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workload",
  "id": "String (identifier)"
}
```

