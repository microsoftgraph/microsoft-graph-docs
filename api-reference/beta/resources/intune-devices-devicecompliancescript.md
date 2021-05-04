---
title: "deviceComplianceScript resource type"
description: "Intune will provide customer the ability to run their Powershell Compliance scripts (detection) on the enrolled windows 10 Azure Active Directory joined devices."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceComplianceScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to run their Powershell Compliance scripts (detection) on the enrolled windows 10 Azure Active Directory joined devices.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceComplianceScripts](../api/intune-devices-devicecompliancescript-list.md)|[deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) collection|List properties and relationships of the [deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) objects.|
|[Get deviceComplianceScript](../api/intune-devices-devicecompliancescript-get.md)|[deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md)|Read properties and relationships of the [deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) object.|
|[Create deviceComplianceScript](../api/intune-devices-devicecompliancescript-create.md)|[deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md)|Create a new [deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) object.|
|[Delete deviceComplianceScript](../api/intune-devices-devicecompliancescript-delete.md)|None|Deletes a [deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md).|
|[Update deviceComplianceScript](../api/intune-devices-devicecompliancescript-update.md)|[deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md)|Update the properties of a [deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) object.|
|[assign action](../api/intune-devices-devicecompliancescript-assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device compliance script|
|publisher|String|Name of the device compliance script publisher|
|version|String|Version of the device compliance script|
|displayName|String|Name of the device compliance script|
|description|String|Description of the device compliance script|
|detectionScriptContent|Binary|The entire content of the detection powershell script|
|createdDateTime|DateTimeOffset|The timestamp of when the device compliance script was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of when the device compliance script was modified. This property is read-only.|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked|
|runAs32Bit|Boolean|Indicate whether PowerShell script(s) should run as 32-bit|
|roleScopeTagIds|String collection|List of Scope Tag IDs for the device compliance script|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceHealthScriptAssignment](../resources/intune-devices-devicehealthscriptassignment.md) collection|The list of group assignments for the device compliance script|
|runSummary|[deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md)|High level run summary for device compliance script.|
|deviceRunStates|[deviceComplianceScriptDeviceState](../resources/intune-devices-devicecompliancescriptdevicestate.md) collection|List of run states for the device compliance script across all devices|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceComplianceScript",
  "id": "String (identifier)",
  "publisher": "String",
  "version": "String",
  "displayName": "String",
  "description": "String",
  "detectionScriptContent": "binary",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "roleScopeTagIds": [
    "String"
  ]
}
```




