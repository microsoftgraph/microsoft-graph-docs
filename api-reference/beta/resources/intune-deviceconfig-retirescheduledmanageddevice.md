---
title: "retireScheduledManagedDevice resource type"
description: "ManagedDevices that are scheduled for retire"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# retireScheduledManagedDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

ManagedDevices that are scheduled for retire

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|managedDeviceId|String|Managed DeviceId|
|managedDeviceName|String|Managed Device Name|
|deviceType|[deviceType](../resources/intune-shared-devicetype.md)|Managed Device Device Type. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `cloudPC`, `blackberry`, `palm`, `unknown`.|
|complianceState|[complianceStatus](../resources/intune-shared-compliancestatus.md)|Managed Device ComplianceStatus. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|retireAfterDateTime|DateTimeOffset|Managed Device Retire After DateTime|
|managementAgent|[managementAgentType](../resources/intune-shared-managementagenttype.md)|Managed Device ManagementAgentType. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`, `windowsManagementCloudApi`.|
|ownerType|[managedDeviceOwnerType](../resources/intune-shared-manageddeviceownertype.md)|Managed Device ManagedDeviceOwnerType. Possible values are: `unknown`, `company`, `personal`.|
|deviceCompliancePolicyName|String|Device Compliance Policy Name|
|deviceCompliancePolicyId|String|Device Compliance PolicyId|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.retireScheduledManagedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.retireScheduledManagedDevice",
  "id": "String (identifier)",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "deviceType": "String",
  "complianceState": "String",
  "retireAfterDateTime": "String (timestamp)",
  "managementAgent": "String",
  "ownerType": "String",
  "deviceCompliancePolicyName": "String",
  "deviceCompliancePolicyId": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```




