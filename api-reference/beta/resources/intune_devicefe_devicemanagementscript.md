#  resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Intune will provide customer the ability to run their Powershell scripts on the enrolled windows 10 Azure Active Directory joined devices. The script can be run once or periodically.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceManagementScripts](../api/intune_devicefe_devicemanagementscript_list.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) collection|List properties and relationships of the [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) objects.|
|[Get deviceManagementScript](../api/intune_devicefe_devicemanagementscript_get.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md)|Read properties and relationships of the [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object.|
|[Create deviceManagementScript](../api/intune_devicefe_devicemanagementscript_create.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md)|Create a new [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object.|
|[Delete deviceManagementScript](../api/intune_devicefe_devicemanagementscript_delete.md)|None|Deletes a [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md).|
|[Update deviceManagementScript](../api/intune_devicefe_devicemanagementscript_update.md)|[deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md)|Update the properties of a [deviceManagementScript](../resources/intune_devicefe_devicemanagementscript.md) object.|
|[assign action](../api/intune_devicefe_devicemanagementscript_assign.md)|None|Not yet documented|
|[List deviceManagementScriptGroupAssignments](../api/intune_devicefe_devicemanagementscriptgroupassignment_list.md)|[deviceManagementScriptGroupAssignment](../resources/intune_devicefe_devicemanagementscriptgroupassignment.md) collection|List properties and relationships of the [deviceManagementScriptGroupAssignment](../resources/intune_devicefe_devicemanagementscriptgroupassignment.md) objects.|
|[Get deviceManagementScriptRunSummary](../api/intune_devicefe_devicemanagementscriptrunsummary_get.md)|[deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md)|Read properties and relationships of the [deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md) object.|
|[List deviceManagementScriptDeviceStates](../api/intune_devicefe_devicemanagementscriptdevicestate_list.md)|[deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) collection|List properties and relationships of the [deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) objects.|
|[List deviceManagementScriptUserStates](../api/intune_devicefe_devicemanagementscriptuserstate_list.md)|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) collection|List properties and relationships of the [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device management script.|
|displayName|String|Name of the device management script.|
|description|String|Optional description for the device management script.|
|runSchedule|[runSchedule](../resources/intune_devicefe_runschedule.md)|The the interval for script to run. If not defined the script will run once|
|scriptContent|String|The base64 encoded script text.|
|createdDateTime|DateTimeOffset|The date and time the device management script was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified.|
|runAsAccount|String|Indicates the type of execution context the device management script runs in. Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked.|
|fileName|String|Script file name.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceManagementScriptGroupAssignment](../resources/intune_devicefe_devicemanagementscriptgroupassignment.md) collection|The list of group assignments for the device management script.|
|runSummary|[deviceManagementScriptRunSummary](../resources/intune_devicefe_devicemanagementscriptrunsummary.md)|Run summary for device management script.|
|deviceRunStates|[deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) collection|List of run states for this script across all devices.|
|userRunStates|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) collection|List of run states for this script across all users.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScript"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementScript",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "enforceSignatureCheck": true,
  "fileName": "String"
}
```



