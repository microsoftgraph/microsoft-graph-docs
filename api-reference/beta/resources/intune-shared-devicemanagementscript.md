---
title: "deviceManagementScript resource type"
description: "Intune will provide customer the ability to run their Powershell scripts on the enrolled windows 10 Azure Active Directory joined devices. The script can be run once or periodically."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to run their Powershell scripts on the enrolled windows 10 Azure Active Directory joined devices. The script can be run once or periodically.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementScripts](../api/intune-shared-devicemanagementscript-list.md)|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) collection|List properties and relationships of the [deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) objects.|
|[Get deviceManagementScript](../api/intune-shared-devicemanagementscript-get.md)|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md)|Read properties and relationships of the [deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) object.|
|[Create deviceManagementScript](../api/intune-shared-devicemanagementscript-create.md)|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md)|Create a new [deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) object.|
|[Delete deviceManagementScript](../api/intune-shared-devicemanagementscript-delete.md)|None|Deletes a [deviceManagementScript](../resources/intune-shared-devicemanagementscript.md).|
|[Update deviceManagementScript](../api/intune-shared-devicemanagementscript-update.md)|[deviceManagementScript](../resources/intune-shared-devicemanagementscript.md)|Update the properties of a [deviceManagementScript](../resources/intune-shared-devicemanagementscript.md) object.|
|**Device management**|
|[assign action](../api/intune-shared-devicemanagementscript-assign.md)|None|Not yet documented|
|**Policy Set**|
|[hasPayloadLinks action](../api/intune-shared-devicemanagementscript-haspayloadlinks.md)|[hasPayloadLinkResultItem](../resources/intune-policyset-haspayloadlinkresultitem.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device management script.|
|displayName|String|Name of the device management script.|
|description|String|Optional description for the device management script.|
|scriptContent|Binary|The script content.|
|createdDateTime|DateTimeOffset|The date and time the device management script was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified. This property is read-only.|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked.|
|fileName|String|Script file name.|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this PowerShellScript instance.|
|runAs32Bit|Boolean|A value indicating whether the PowerShell script should run as 32-bit|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Device management**|
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
  "@odata.type": "microsoft.graph.deviceManagementScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScript",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "scriptContent": "binary",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "enforceSignatureCheck": true,
  "fileName": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "runAs32Bit": true
}
```




