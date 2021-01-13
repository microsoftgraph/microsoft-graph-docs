---
title: "deviceHealthScript resource type"
description: "Intune will provide customer the ability to run their Powershell Health scripts (remediation + detection) on the enrolled windows 10 Azure Active Directory joined devices."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to run their Powershell Health scripts (remediation + detection) on the enrolled windows 10 Azure Active Directory joined devices.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceHealthScripts](../api/intune-devices-devicehealthscript-list.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md) collection|List properties and relationships of the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) objects.|
|[Get deviceHealthScript](../api/intune-devices-devicehealthscript-get.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Read properties and relationships of the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|
|[Create deviceHealthScript](../api/intune-devices-devicehealthscript-create.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Create a new [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|
|[Delete deviceHealthScript](../api/intune-devices-devicehealthscript-delete.md)|None|Deletes a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md).|
|[Update deviceHealthScript](../api/intune-devices-devicehealthscript-update.md)|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md)|Update the properties of a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.|
|[assign action](../api/intune-devices-devicehealthscript-assign.md)|None|Not yet documented|
|[updateGlobalScript action](../api/intune-devices-devicehealthscript-updateglobalscript.md)|String|Update the Proprietary Device Health Script|
|[getGlobalScriptHighestAvailableVersion action](../api/intune-devices-devicehealthscript-getglobalscripthighestavailableversion.md)|String|Update the Proprietary Device Health Script|
|[enableGlobalScripts action](../api/intune-devices-devicehealthscript-enableglobalscripts.md)|None|Not yet documented|
|[areGlobalScriptsAvailable function](../api/intune-devices-devicehealthscript-areglobalscriptsavailable.md)|[globalDeviceHealthScriptState](../resources/intune-devices-globaldevicehealthscriptstate.md)|Not yet documented|
|[getRemediationSummary function](../api/intune-devices-devicehealthscript-getremediationsummary.md)|[deviceHealthScriptRemediationSummary](../resources/intune-devices-devicehealthscriptremediationsummary.md)|Not yet documented|
|[getRemediationHistory function](../api/intune-devices-devicehealthscript-getremediationhistory.md)|[deviceHealthScriptRemediationHistory](../resources/intune-devices-devicehealthscriptremediationhistory.md)|Function to get the number of remediations by a device health scripts|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device health script|
|publisher|String|Name of the device health script publisher|
|version|String|Version of the device health script|
|displayName|String|Name of the device health script|
|description|String|Description of the device health script|
|detectionScriptContent|Binary|The entire content of the detection powershell script|
|remediationScriptContent|Binary|The entire content of the remediation powershell script|
|createdDateTime|DateTimeOffset|The timestamp of when the device health script was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of when the device health script was modified. This property is read-only.|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked|
|runAs32Bit|Boolean|Indicate whether PowerShell script(s) should run as 32-bit|
|roleScopeTagIds|String collection|List of Scope Tag IDs for the device health script|
|isGlobalScript|Boolean|Determines if this is Microsoft Proprietary Script. Proprietary scripts are read-only|
|highestAvailableVersion|String|Highest available version for a Microsoft Proprietary script|
|detectionScriptParameters|[deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md) collection|List of ComplexType DetectionScriptParameters objects.|
|remediationScriptParameters|[deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md) collection|List of ComplexType RemediationScriptParameters objects.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceHealthScriptAssignment](../resources/intune-devices-devicehealthscriptassignment.md) collection|The list of group assignments for the device health script|
|runSummary|[deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md)|High level run summary for device health script.|
|deviceRunStates|[deviceHealthScriptDeviceState](../resources/intune-devices-devicehealthscriptdevicestate.md) collection|List of run states for the device health script across all devices|

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
  "publisher": "String",
  "version": "String",
  "displayName": "String",
  "description": "String",
  "detectionScriptContent": "binary",
  "remediationScriptContent": "binary",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "runAsAccount": "String",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "roleScopeTagIds": [
    "String"
  ],
  "isGlobalScript": true,
  "highestAvailableVersion": "String",
  "detectionScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "String",
      "description": "String",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "String"
    }
  ],
  "remediationScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "String",
      "description": "String",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "String"
    }
  ]
}
```




