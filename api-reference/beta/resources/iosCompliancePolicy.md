# iosCompliancePolicy resource type

This class contains compliance settings for IOS.

Inherits from [deviceCompliancePolicy](deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosCompliancePolicies](../api/iosCompliancePolicy_list.md)|[iosCompliancePolicy](iosCompliancePolicy.md) collection|List properties and relationships of the [iosCompliancePolicy](../resource/iosCompliancePolicy.md) objects.|
|[Get iosCompliancePolicy](../api/iosCompliancePolicy_get.md)|[iosCompliancePolicy](iosCompliancePolicy.md)|Read properties and relationships of the [iosCompliancePolicy](../resource/iosCompliancePolicy.md) object.|
|[Create iosCompliancePolicy](../api/iosCompliancePolicy_create.md)|[iosCompliancePolicy](iosCompliancePolicy.md)|Create a new [iosCompliancePolicy](../resource/iosCompliancePolicy.md) object.|
|[Delete iosCompliancePolicy](../api/iosCompliancePolicy_delete.md)|None|Deletes a [iosCompliancePolicy](../resource/iosCompliancePolicy.md).|
|[Update iosCompliancePolicy](../api/iosCompliancePolicy_update.md)|[iosCompliancePolicy](iosCompliancePolicy.md)|Update the properties of a [iosCompliancePolicy](../resource/iosCompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/iosCompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/iosCompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/iosCompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/iosCompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|passcodeBlockSimple|Boolean|Indicates whether or not to block simple passcodes.|
|passcodeExpirationDays|Int32|Number of days before the passcode expires.|
|passcodeMinimumLength|Int32|Minimum length of passcode.|
|passcodeMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a passcode is required.|
|passcodePreviousPasscodeBlockCount|Int32|Number of previous passcodes to block.|
|passcodeMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passcodeRequiredType|String|The required passcode type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passcodeRequired|Boolean|Indicates whether or not to require a passcode.|
|osMinimumVersion|String|Minimum IOS version.|
|osMaximumVersion|String|Maximum IOS version.|
|securityBlockJailbrokenDevices|Boolean|Devices must not be jailbroken or rooted.|
|deviceThreatProtectionEnabled|Boolean|Require that devices have enabled device threat protection .|
|deviceThreatProtectionRequiredSecurityLevel|String|Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: `none`, `low`, `medium`, `high`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](deviceCompliancePolicyGroupAssignment.md) collection|The list of group assignments for this compliance policy. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](deviceComplianceDeviceStatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|
|userStatuses|[deviceComplianceUserStatus](deviceComplianceUserStatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosCompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passcodeBlockSimple": true,
  "passcodeExpirationDays": 1024,
  "passcodeMinimumLength": 1024,
  "passcodeMinutesOfInactivityBeforeLock": 1024,
  "passcodePreviousPasscodeBlockCount": 1024,
  "passcodeMinimumCharacterSetCount": 1024,
  "passcodeRequiredType": "String",
  "passcodeRequired": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "securityBlockJailbrokenDevices": true,
  "deviceThreatProtectionEnabled": true,
  "deviceThreatProtectionRequiredSecurityLevel": "String"
}
```

