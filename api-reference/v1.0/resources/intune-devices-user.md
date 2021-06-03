---
title: "user resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-devices-user-list.md)|[user](../resources/intune-devices-user.md) collection|List properties and relationships of the [user](../resources/intune-devices-user.md) objects.|
|[Get user](../api/intune-devices-user-get.md)|[user](../resources/intune-devices-user.md)|Read properties and relationships of the [user](../resources/intune-devices-user.md) object.|
|[Create user](../api/intune-devices-user-create.md)|[user](../resources/intune-devices-user.md)|Create a new [user](../resources/intune-devices-user.md) object.|
|[Delete user](../api/intune-devices-user-delete.md)|None|Deletes a [user](../resources/intune-devices-user.md).|
|[Update user](../api/intune-devices-user-update.md)|[user](../resources/intune-devices-user.md)|Update the properties of a [user](../resources/intune-devices-user.md) object.|
|[removeAllDevicesFromManagement action](../api/intune-devices-user-removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The managed devices associated with the user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```




