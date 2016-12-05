# iosCompliancePolicy resource type

This class contains compliance settings for IOS.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosCompliancePolicies](../api/intune_deviceconfig_iosCompliancePolicy_list.md)|[iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md) collection|List properties and relationships of the [iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md) objects.|
|[Get iosCompliancePolicy](../api/intune_deviceconfig_iosCompliancePolicy_get.md)|[iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md)|Read properties and relationships of the [iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md) object.|
|[Create iosCompliancePolicy](../api/intune_deviceconfig_iosCompliancePolicy_create.md)|[iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md)|Create a new [iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md) object.|
|[Delete iosCompliancePolicy](../api/intune_deviceconfig_iosCompliancePolicy_delete.md)|None|Deletes a [iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md).|
|[Update iosCompliancePolicy](../api/intune_deviceconfig_iosCompliancePolicy_update.md)|[iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md)|Update the properties of a [iosCompliancePolicy](../resources/intune_deviceconfig_iosCompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_iosCompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_iosCompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/intune_deviceconfig_iosCompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/intune_deviceconfig_iosCompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
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
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|The list of group assignments for this compliance policy. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|

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


