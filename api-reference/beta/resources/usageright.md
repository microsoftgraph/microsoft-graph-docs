---
title: "usageRight resource type"
description: "Contains information about a usageRight a user/device has assigned"
author: "jeeshnair"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---

# usageRight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A usage right represents a license that a user or device has for either third party software built on power apps or for device based subscriptions (device only).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List user usageRights](../api/user-list-usagerights.md)|[usageRight](../resources/usageright.md) collection|Get the list of usage rights for a user.|
|[List device usageRights](../api/device-list-usagerights.md)|[usageRight](../resources/usageright.md) collection|Get the list of usage rights for a device.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|Product id corresponding to the usage right.|
|id|String|The id of the usage right.|
|serviceIdentifier|String|Identifier of the service corresponding to the usage right.|
|state|usageRightState|The state of the usage right. Possible values are: `active`, `inactive`, `warning`, `suspended`.|

### usageRightState values 

| Member             |  Description               |
| :----------------- |  :------------------------ |
|active              | Indicates that the usage right is active and can be used for provisioning benefits.|
|inactive                | Indicates that the usage right is not active and cannot be used for provisioning benefits.|
|warning                | Indicates that the usage right is in grace likely due to payment violation. This state can be used to either remind of pending payment or offer a degraded experience.|
|suspended                | Indicates that the usage right is suspended likely due to Payment violation|
|unknownFutureValue      | Sentinel value to indicate future values. |

>**Note:** Only the active and warning states represent a usable benefit. All other states should be treated as not resulting in a usable benefit.



## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.usageRight",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usageRight",
  "id": "String (identifier)",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

