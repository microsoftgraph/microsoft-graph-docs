# androidCompliancePolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This class contains compliance settings for Android.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidCompliancePolicies](../api/intune_deviceconfig_androidcompliancepolicy_list.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) collection|List properties and relationships of the [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) objects.|
|[Get androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_get.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Read properties and relationships of the [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|
|[Create androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_create.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Create a new [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|
|[Delete androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_delete.md)|None|Deletes a [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md).|
|[Update androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_update.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Update the properties of a [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_androidcompliancepolicy_list_devicecompliancepolicygroupassignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_androidcompliancepolicy_list_devicecompliancescheduledactionforrule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuses](../api/intune_deviceconfig_androidcompliancepolicy_list_devicecompliancedevicestatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|Get the deviceComplianceDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuses](../api/intune_deviceconfig_androidcompliancepolicy_list_devicecomplianceuserstatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|Get the deviceComplianceUserStatuses from the userStatuses navigation property.|
|[Get deviceComplianceDeviceOverview](../api/intune_deviceconfig_androidcompliancepolicy_get_devicecompliancedeviceoverview.md)|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Get the [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|passwordRequired|Boolean|Require a password to unlock device.|
|passwordMinimumLength|Int32|Minimum password length.|
|passwordRequiredType|String|Type of characters in password Possible values are: `deviceDefault`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `numeric`.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|securityPreventInstallAppsFromUnknownSources|Boolean|Require that devices disallow installation of apps from unknown sources.|
|securityDisableUsbDebugging|Boolean|Disable USB debugging on Android devices.|
|requireAppVerify|Boolean|Require the Android Verify apps feature is turned on.|
|deviceThreatProtectionEnabled|Boolean|Require that devices have enabled device threat protection.|
|deviceThreatProtectionRequiredSecurityLevel|String|Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: `none`, `low`, `medium`, `high`.|
|securityBlockJailbrokenDevices|Boolean|Devices must not be jailbroken or rooted.|
|osMinimumVersion|String|Minimum Android version.|
|osMaximumVersion|String|Maximum Android version.|
|minAndroidSecurityPatchLevel|String|Minimum Android security patch level.|
|storageRequireEncryption|Boolean|Require encryption on Android devices.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|The list of group assignments for this compliance policy. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Device compliance devices status overview Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidCompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordRequired": true,
  "passwordMinimumLength": 1024,
  "passwordRequiredType": "String",
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordExpirationDays": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "securityPreventInstallAppsFromUnknownSources": true,
  "securityDisableUsbDebugging": true,
  "requireAppVerify": true,
  "deviceThreatProtectionEnabled": true,
  "deviceThreatProtectionRequiredSecurityLevel": "String",
  "securityBlockJailbrokenDevices": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "minAndroidSecurityPatchLevel": "String",
  "storageRequireEncryption": true
}
```



