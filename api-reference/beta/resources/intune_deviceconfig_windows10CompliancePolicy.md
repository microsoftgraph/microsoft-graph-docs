# windows10CompliancePolicy resource type

This class contains compliance settings for Windows 10.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10CompliancePolicies](../api/intune_deviceconfig_windows10CompliancePolicy_list.md)|[windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md) collection|List properties and relationships of the [windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md) objects.|
|[Get windows10CompliancePolicy](../api/intune_deviceconfig_windows10CompliancePolicy_get.md)|[windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md)|Read properties and relationships of the [windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md) object.|
|[Create windows10CompliancePolicy](../api/intune_deviceconfig_windows10CompliancePolicy_create.md)|[windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md)|Create a new [windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md) object.|
|[Delete windows10CompliancePolicy](../api/intune_deviceconfig_windows10CompliancePolicy_delete.md)|None|Deletes a [windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md).|
|[Update windows10CompliancePolicy](../api/intune_deviceconfig_windows10CompliancePolicy_update.md)|[windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md)|Update the properties of a [windows10CompliancePolicy](../resources/intune_deviceconfig_windows10CompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_windows10CompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_windows10CompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/intune_deviceconfig_windows10CompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/intune_deviceconfig_windows10CompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordExpirationDays|Int32|The password expiration in days.|
|passwordMinimumLength|Int32|The minimum password length.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent re-use of.|
|requireHealthyDeviceReport|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation.|
|osMinimumVersion|String|Minimum Windows 8.1 version.|
|osMaximumVersion|String|Maximum Windows 8.1 version.|
|earlyLaunchAntiMalwareDriverEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.|
|bitLockerEnabled|Boolean|Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled|
|secureBootEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.|
|codeIntegrityEnabled|Boolean|Require devices to be reported as healthy by Windows Device Health Attestation.|
|storageRequireEncryption|Boolean|Require encryption on windows devices.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|The list of group assignments for this compliance policy. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md)|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10CompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10CompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordRequiredType": "String",
  "passwordPreviousPasswordBlockCount": 1024,
  "requireHealthyDeviceReport": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "earlyLaunchAntiMalwareDriverEnabled": true,
  "bitLockerEnabled": true,
  "secureBootEnabled": true,
  "codeIntegrityEnabled": true,
  "storageRequireEncryption": true
}
```


