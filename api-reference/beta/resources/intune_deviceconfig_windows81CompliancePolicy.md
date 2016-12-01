# windows81CompliancePolicy resource type

This class contains compliance settings for Windows 8.1.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81CompliancePolicies](../api/intune_deviceconfig_windows81CompliancePolicy_list.md)|[windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) collection|List properties and relationships of the [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) objects.|
|[Get windows81CompliancePolicy](../api/intune_deviceconfig_windows81CompliancePolicy_get.md)|[windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md)|Read properties and relationships of the [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object.|
|[Create windows81CompliancePolicy](../api/intune_deviceconfig_windows81CompliancePolicy_create.md)|[windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md)|Create a new [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object.|
|[Delete windows81CompliancePolicy](../api/intune_deviceconfig_windows81CompliancePolicy_delete.md)|None|Deletes a [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md).|
|[Update windows81CompliancePolicy](../api/intune_deviceconfig_windows81CompliancePolicy_update.md)|[windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md)|Update the properties of a [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_windows81CompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_windows81CompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/intune_deviceconfig_windows81CompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/intune_deviceconfig_windows81CompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|passwordExpirationDays|Int32|Password expiration in days.|
|passwordMinimumLength|Int32|The minimum password length.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent re-use of.|
|osMinimumVersion|String|Minimum Windows 8.1 version.|
|osMaximumVersion|String|Maximum Windows 8.1 version.|
|storageRequireEncryption|Boolean|Indicates whether or not to require encryption on a windows 8.1 device.|

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
  "@odata.type": "microsoft.graph.windows81CompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81CompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordRequiredType": "String",
  "passwordPreviousPasswordBlockCount": 1024,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "storageRequireEncryption": true
}
```


