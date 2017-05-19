# windows10MobileCompliancePolicy resource type

This class contains compliance settings for Windows 10 Mobile.

Inherits from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10MobileCompliancePolicies](../api/windows10MobileCompliancePolicy_list.md)|[windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md) collection|List properties and relationships of the [windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md) objects.|
|[Get windows10MobileCompliancePolicy](../api/windows10MobileCompliancePolicy_get.md)|[windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md)|Read properties and relationships of the [windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md) object.|
|[Create windows10MobileCompliancePolicy](../api/windows10MobileCompliancePolicy_create.md)|[windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md)|Create a new [windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md) object.|
|[Delete windows10MobileCompliancePolicy](../api/windows10MobileCompliancePolicy_delete.md)|None|Deletes a [windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md).|
|[Update windows10MobileCompliancePolicy](../api/windows10MobileCompliancePolicy_update.md)|[windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md)|Update the properties of a [windows10MobileCompliancePolicy](../resources/windows10MobileCompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/windows10MobileCompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/windows10MobileCompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/windows10MobileCompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/windows10MobileCompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|
|passwordRequired|Boolean|Require a password to unlock Windows Phone device.|
|passwordBlockSimple|Boolean|Whether or not to block syncing the calendar.|
|passwordMinimumLength|Int32|Minimum password length.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent re-use of.|
|passwordExpirationDays|Int32|Number of days before password expiration.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordRequireToUnlockFromIdle|Boolean|Require a password to unlock an idle device.|
|osMinimumVersion|String|Minimum Windows Phone version.|
|osMaximumVersion|String|Maximum Windows Phone version.|
|earlyLaunchAntiMalwareDriverEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.|
|bitLockerEnabled|Boolean|Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled|
|secureBootEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.|
|codeIntegrityEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation.|
|storageRequireEncryption|Boolean|Require encryption on windows devices.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|The list of group assignments for this compliance policy. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/deviceComplianceScheduledActionForRule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10MobileCompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10MobileCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordRequired": true,
  "passwordBlockSimple": true,
  "passwordMinimumLength": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordRequiredType": "String",
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordExpirationDays": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordRequireToUnlockFromIdle": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "earlyLaunchAntiMalwareDriverEnabled": true,
  "bitLockerEnabled": true,
  "secureBootEnabled": true,
  "codeIntegrityEnabled": true,
  "storageRequireEncryption": true
}
```

