---
title: "deviceManagementScriptUserState resource type"
description: "Contains properties for user run state of the device management script."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# deviceManagementScriptUserState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for user run state of the device management script.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementScriptUserStates](../api/intune-devices-devicemanagementscriptuserstate-list.md)|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) collection|List properties and relationships of the [deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) objects.|
|[Get deviceManagementScriptUserState](../api/intune-devices-devicemanagementscriptuserstate-get.md)|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md)|Read properties and relationships of the [deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) object.|
|[Create deviceManagementScriptUserState](../api/intune-devices-devicemanagementscriptuserstate-create.md)|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md)|Create a new [deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) object.|
|[Delete deviceManagementScriptUserState](../api/intune-devices-devicemanagementscriptuserstate-delete.md)|None|Deletes a [deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md).|
|[Update deviceManagementScriptUserState](../api/intune-devices-devicemanagementscriptuserstate-update.md)|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md)|Update the properties of a [deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device management script user state entity.|
|successDeviceCount|Int32|Success device count for specific user.|
|errorDeviceCount|Int32|Error device count for specific user.|
|userPrincipalName|String|User principle name of specific user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceRunStates|[deviceManagementScriptDeviceState](../resources/intune-devices-devicemanagementscriptdevicestate.md) collection|List of run states for this script across all devices of specific user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptUserState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptUserState",
  "id": "String (identifier)",
  "successDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "userPrincipalName": "String"
}
```





