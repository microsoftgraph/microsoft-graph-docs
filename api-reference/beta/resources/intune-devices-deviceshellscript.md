---
title: "deviceShellScript resource type"
description: "Intune will provide customer the ability to run their Shell scripts on the enrolled Mac OS devices. The script can be run once or periodically."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceShellScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to run their Shell scripts on the enrolled Mac OS devices. The script can be run once or periodically.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceShellScripts](../api/intune-devices-deviceshellscript-list.md)|[deviceShellScript](../resources/intune-devices-deviceshellscript.md) collection|List properties and relationships of the [deviceShellScript](../resources/intune-devices-deviceshellscript.md) objects.|
|[Get deviceShellScript](../api/intune-devices-deviceshellscript-get.md)|[deviceShellScript](../resources/intune-devices-deviceshellscript.md)|Read properties and relationships of the [deviceShellScript](../resources/intune-devices-deviceshellscript.md) object.|
|[Create deviceShellScript](../api/intune-devices-deviceshellscript-create.md)|[deviceShellScript](../resources/intune-devices-deviceshellscript.md)|Create a new [deviceShellScript](../resources/intune-devices-deviceshellscript.md) object.|
|[Delete deviceShellScript](../api/intune-devices-deviceshellscript-delete.md)|None|Deletes a [deviceShellScript](../resources/intune-devices-deviceshellscript.md).|
|[Update deviceShellScript](../api/intune-devices-deviceshellscript-update.md)|[deviceShellScript](../resources/intune-devices-deviceshellscript.md)|Update the properties of a [deviceShellScript](../resources/intune-devices-deviceshellscript.md) object.|
|[assign action](../api/intune-devices-deviceshellscript-assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|executionFrequency|Duration|The interval for script to run. If not defined the script will run once|
|retryCount|Int32|Number of times for the script to be retried if it fails|
|blockExecutionNotifications|Boolean|Does not notify the user a script is being executed|
|id|String|Unique Identifier for the device management script.|
|displayName|String|Name of the device management script.|
|description|String|Optional description for the device management script.|
|scriptContent|Binary|The script content.|
|createdDateTime|DateTimeOffset|The date and time the device management script was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified. This property is read-only.|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Possible values are: `system`, `user`.|
|fileName|String|Script file name.|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this PowerShellScript instance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceManagementScriptGroupAssignment](../resources/intune-devices-devicemanagementscriptgroupassignment.md) collection|The list of group assignments for the device management script.|
|assignments|[deviceManagementScriptAssignment](../resources/intune-devices-devicemanagementscriptassignment.md) collection|The list of group assignments for the device management script.|
|runSummary|[deviceManagementScriptRunSummary](../resources/intune-devices-devicemanagementscriptrunsummary.md)|Run summary for device management script.|
|deviceRunStates|[deviceManagementScriptDeviceState](../resources/intune-devices-devicemanagementscriptdevicestate.md) collection|List of run states for this script across all devices.|
|userRunStates|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) collection|List of run states for this script across all users.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceShellScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceShellScript",
  "executionFrequency": "String (duration)",
  "retryCount": 1024,
  "blockExecutionNotifications": true,
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "scriptContent": "binary",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "fileName": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```




