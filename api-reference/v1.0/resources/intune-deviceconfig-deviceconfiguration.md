---
title: "deviceConfiguration resource type"
description: "Device Configuration."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfiguration resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurations](../api/intune-deviceconfig-deviceconfiguration-list.md)|[deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) collection|List properties and relationships of the [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) objects.|
|[Get deviceConfiguration](../api/intune-deviceconfig-deviceconfiguration-get.md)|[deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|Read properties and relationships of the [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) object.|
|[assign action](../api/intune-deviceconfig-deviceconfiguration-assign.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|Not yet documented|
|[getOmaSettingPlainTextValue function](../api/intune-deviceconfig-deviceconfiguration-getomasettingplaintextvalue.md)|String|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile.|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device.|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user.|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024
}
```




