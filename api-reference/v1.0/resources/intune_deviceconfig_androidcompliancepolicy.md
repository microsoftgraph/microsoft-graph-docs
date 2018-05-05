# androidCompliancePolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This class contains compliance settings for Android.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidCompliancePolicies](../api/intune_deviceconfig_androidcompliancepolicy_list.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) collection|List properties and relationships of the [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) objects.|
|[Get androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_get.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Read properties and relationships of the [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|
|[Create androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_create.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Create a new [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|
|[Delete androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_delete.md)|None|Deletes a [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md).|
|[Update androidCompliancePolicy](../api/intune_deviceconfig_androidcompliancepolicy_update.md)|[androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md)|Update the properties of a [androidCompliancePolicy](../resources/intune_deviceconfig_androidcompliancepolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|passwordRequired|Boolean|Require a password to unlock device.|
|passwordMinimumLength|Int32|Minimum password length. Valid values 4 to 16|
|passwordRequiredType|[androidRequiredPasswordType](../resources/intune_deviceconfig_androidrequiredpasswordtype.md)|Type of characters in password. Possible values are: `deviceDefault`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `numeric`, `numericComplex`, `any`.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordExpirationDays|Int32|Number of days before the password expires. Valid values 1 to 365|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|securityPreventInstallAppsFromUnknownSources|Boolean|Require that devices disallow installation of apps from unknown sources.|
|securityDisableUsbDebugging|Boolean|Disable USB debugging on Android devices.|
|securityRequireVerifyApps|Boolean|Require the Android Verify apps feature is turned on.|
|deviceThreatProtectionEnabled|Boolean|Require that devices have enabled device threat protection.|
|deviceThreatProtectionRequiredSecurityLevel|[deviceThreatProtectionLevel](../resources/intune_deviceconfig_devicethreatprotectionlevel.md)|Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: `unavailable`, `secured`, `low`, `medium`, `high`, `notSet`.|
|securityBlockJailbrokenDevices|Boolean|Devices must not be jailbroken or rooted.|
|osMinimumVersion|String|Minimum Android version.|
|osMaximumVersion|String|Maximum Android version.|
|minAndroidSecurityPatchLevel|String|Minimum Android security patch level.|
|storageRequireEncryption|Boolean|Require encryption on Android devices.|
|securityRequireSafetyNetAttestationBasicIntegrity|Boolean|Require the device to pass the SafetyNet basic integrity check.|
|securityRequireSafetyNetAttestationCertifiedDevice|Boolean|Require the device to pass the SafetyNet certified device check.|
|securityRequireGooglePlayServices|Boolean|Require Google Play Services to be installed and enabled on the device.|
|securityRequireUpToDateSecurityProviders|Boolean|Require the device to have up to date security providers. The device will require Google Play Services to be enabled and up to date.|
|securityRequireCompanyPortalAppIntegrity|Boolean|Require the device to pass the Company Portal client app runtime integrity check.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Device compliance devices status overview Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|userStatusOverview|[deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md)|Device compliance users status overview Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Compliance Setting State Device Summary Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|assignments|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|The collection of assignments for this compliance policy. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidCompliancePolicy"
}
-->
``` json
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
  "securityRequireVerifyApps": true,
  "deviceThreatProtectionEnabled": true,
  "deviceThreatProtectionRequiredSecurityLevel": "String",
  "securityBlockJailbrokenDevices": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "minAndroidSecurityPatchLevel": "String",
  "storageRequireEncryption": true,
  "securityRequireSafetyNetAttestationBasicIntegrity": true,
  "securityRequireSafetyNetAttestationCertifiedDevice": true,
  "securityRequireGooglePlayServices": true,
  "securityRequireUpToDateSecurityProviders": true,
  "securityRequireCompanyPortalAppIntegrity": true
}
```



