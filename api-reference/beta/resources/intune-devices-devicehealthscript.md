---
title: "deviceHealthScript resource type"
description: "Intune will provide customer the ability to run their Powershell scripts on the enrolled windows 10 Azure Active Directory joined devices. The script can be run once or periodically."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceHealthScript resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to run their Powershell scripts on the enrolled windows 10 Azure Active Directory joined devices. The script can be run once or periodically.


Inherits from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceHealthScripts](../api/intune-devices-devicehealthscript-list.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md) collection|List properties and relationships of the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) objects.|
|[Get deviceHealthScript](../api/intune-devices-devicehealthscript-get.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Read properties and relationships of the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|
|[Create deviceHealthScript](../api/intune-devices-devicehealthscript-create.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Create a new [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|
|[Delete deviceHealthScript](../api/intune-devices-devicehealthscript-delete.md)|None|Deletes a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md).|
|[Update deviceHealthScript](../api/intune-devices-devicehealthscript-update.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Update the properties of a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|displayName|String|Name of the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|description|String|Optional description for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runSchedule|[runSchedule](../resources/intune-devices-runschedule.md)|The interval for script to run. If not defined the script will run once Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|scriptContent|Binary|The script content. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|createdDateTime|DateTimeOffset|The date and time the device management script was created. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md). Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|fileName|String|Script file name. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this PowerShellScript instance. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runAs32Bit|Boolean|A value indicating whether the PowerShell script should run as 32-bit Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|complianceRule|[deviceHealthScriptComplianceRule](../resources/intune-devices-devicehealthscriptcompliancerule.md)|Not yet documented|
|remediationScriptContent|Binary|Not yet documented|
|runRemediationScript|Boolean|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceManagementScriptGroupAssignment](../resources/intune-devices-devicemanagementscriptgroupassignment.md) collection|The list of group assignments for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|assignments|[deviceManagementScriptAssignment](../resources/intune-devices-devicemanagementscriptassignment.md) collection|The list of group assignments for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runSummary|[deviceManagementScriptRunSummary](../resources/intune-devices-devicemanagementscriptrunsummary.md)|Run summary for device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|deviceRunStates|[deviceManagementScriptDeviceState](../resources/intune-devices-devicemanagementscriptdevicestate.md) collection|List of run states for this script across all devices. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|userRunStates|[deviceManagementScriptUserState](../resources/intune-devices-devicemanagementscriptuserstate.md) collection|List of run states for this script across all users. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceHealthScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScript",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "binary",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "enforceSignatureCheck": true,
  "fileName": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "runAs32Bit": true,
  "complianceRule": {
    "@odata.type": "microsoft.graph.deviceHealthScriptComplianceRule",
    "detectionType": "String",
    "operator": "String",
    "detectionValue": "String"
  },
  "remediationScriptContent": "binary",
  "runRemediationScript": true
}
```



