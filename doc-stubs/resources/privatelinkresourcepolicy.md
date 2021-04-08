---
title: "privateLinkResourcePolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# privateLinkResourcePolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privateLinkResourcePolicies](../api/privatelinkresourcepolicy-list.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) collection|Get a list of the [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) objects and their properties.|
|[Create privateLinkResourcePolicy](../api/privatelinkresourcepolicy-create.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md)|Create a new [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object.|
|[Get privateLinkResourcePolicy](../api/privatelinkresourcepolicy-get.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md)|Read the properties and relationships of a [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object.|
|[Update privateLinkResourcePolicy](../api/privatelinkresourcepolicy-update.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md)|Update the properties of a [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object.|
|[Delete privateLinkResourcePolicy](../api/privatelinkresourcepolicy-delete.md)|None|Deletes a [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object.|
|[List privateEndpointConnections](../api/privatelinkresourcepolicy-list-privateendpointconnections.md)|[privateEndpointConnection](../resources/privateendpointconnection.md) collection|Get the privateEndpointConnection resources from the privateEndpointConnections navigation property.|
|[Create privateEndpointConnection](../api/privatelinkresourcepolicy-post-privateendpointconnections.md)|[privateEndpointConnection](../resources/privateendpointconnection.md)|Create a new privateEndpointConnection object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedTenantIds|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|externalPrivateLinkId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|privateEndpointConnections|[privateEndpointConnection](../resources/privateendpointconnection.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privateLinkResourcePolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateLinkResourcePolicy",
  "id": "String (identifier)",
  "externalPrivateLinkId": "String",
  "displayName": "String",
  "allowedTenantIds": [
    "String"
  ]
}
```

