---
title: "aospDeviceOwnerCompliancePolicy resource type"
description: "This topic provides descriptions of the declared methods, properties and relationships exposed by the AndroidDeviceOwnerAOSPCompliancePolicy resource."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# aospDeviceOwnerCompliancePolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This topic provides descriptions of the declared methods, properties and relationships exposed by the AndroidDeviceOwnerAOSPCompliancePolicy resource.


Inherits from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List aospDeviceOwnerCompliancePolicies](../api/intune-deviceconfig-aospdeviceownercompliancepolicy-list.md)|[aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md) collection|List properties and relationships of the [aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md) objects.|
|[Get aospDeviceOwnerCompliancePolicy](../api/intune-deviceconfig-aospdeviceownercompliancepolicy-get.md)|[aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md)|Read properties and relationships of the [aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md) object.|
|[Create aospDeviceOwnerCompliancePolicy](../api/intune-deviceconfig-aospdeviceownercompliancepolicy-create.md)|[aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md)|Create a new [aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md) object.|
|[Delete aospDeviceOwnerCompliancePolicy](../api/intune-deviceconfig-aospdeviceownercompliancepolicy-delete.md)|None|Deletes a [aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md).|
|[Update aospDeviceOwnerCompliancePolicy](../api/intune-deviceconfig-aospdeviceownercompliancepolicy-update.md)|[aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md)|Update the properties of a [aospDeviceOwnerCompliancePolicy](../resources/intune-deviceconfig-aospdeviceownercompliancepolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|osMinimumVersion|String|Minimum Android version.|
|osMaximumVersion|String|Maximum Android version.|
|minAndroidSecurityPatchLevel|String|Minimum Android security patch level.|
|passwordRequired|Boolean|Require a password to unlock device.|
|passwordRequiredType|[androidDeviceOwnerRequiredPasswordType](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype.md)|Type of characters in password. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `customPassword`.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required. Valid values 1 to 8640|
|passwordMinimumLength|Int32|Minimum password length. Valid values 4 to 16|
|storageRequireEncryption|Boolean|Require encryption on Android devices.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune-deviceconfig-devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune-deviceconfig-devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune-deviceconfig-devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune-deviceconfig-devicecompliancedeviceoverview.md)|Device compliance devices status overview Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|userStatusOverview|[deviceComplianceUserOverview](../resources/intune-deviceconfig-devicecomplianceuseroverview.md)|Device compliance users status overview Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Compliance Setting State Device Summary Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|
|assignments|[deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) collection|The collection of assignments for this compliance policy. Inherited from [deviceCompliancePolicy](../resources/intune-shared-devicecompliancepolicy.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.aospDeviceOwnerCompliancePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aospDeviceOwnerCompliancePolicy",
  "roleScopeTagIds": [
    "String"
  ],
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "minAndroidSecurityPatchLevel": "String",
  "passwordRequired": true,
  "passwordRequiredType": "String",
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordMinimumLength": 1024,
  "storageRequireEncryption": true
}
```




