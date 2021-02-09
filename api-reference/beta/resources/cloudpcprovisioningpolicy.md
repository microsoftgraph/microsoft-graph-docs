---
title: "cloudPcProvisioningPolicy resource type"
description: "Represents a cloud PC provisioning policy."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud PC provisioning policy.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List provisioningPolicies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|List properties and relationships of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects.|
|[Get cloudPcProvisioningPolicy](../api/cloudpcprovisioningpolicy-get.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Read the properties and relationships of a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Create cloudPcProvisioningPolicy](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Update cloudPcProvisioningPolicy](../api/cloudpcprovisioningpolicy-update.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Update the properties of a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Delete cloudPcProvisioningPolicy](../api/cloudpcprovisioningpolicy-delete.md)|None|Delete a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Assign cloudPcProvisioningPolicy](../api/cloudpcprovisioningpolicy-assign.md)|None |Assign a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) to user groups.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the cloud PC provisioning policy. Read-only.|
|displayName|String|The display name for the provisioning policy.|
|description|String|The provisioning policy description.|
|onPremisesConnectionId|String|The ID of the cloudPcOnPremisesConnection. To ensure that cloud PCs have network connectivity and that they domain join, choose a connection with a virtual network that’s validated by the cloud PC service.|
|imageId|String|The ID of the OS image you want to provision on cloud PCs. The format for a gallery type image is: {publisher_offer_sku}.|
|imageDisplayName|String|The display name for the OS image you’re provisioning.|
|imageType|cloudPcProvisioningPolicyImageType|The type of OS image (custom or gallery) you want to provision on cloud PCs. Possible values are: `gallery`, `custom`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) collection|A defined collection of provisioning policy assignments. Returned only on `$expand`. See an [example](../api/cloudpcprovisioningpolicy-get.md) of getting the assignments relationship. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "onPremisesConnectionId": "String",
  "imageId": "String",
  "imageDisplayName": "String",
  "imageType": "String"
}
```
