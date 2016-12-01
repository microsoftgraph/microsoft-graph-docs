# macOSCompliancePolicy resource type

This class contains compliance settings for Mac OS.

Inherits from [deviceCompliancePolicy](deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSCompliancePolicies](../api/macOSCompliancePolicy_list.md)|[macOSCompliancePolicy](../resources/macOSCompliancePolicy.md) collection|List properties and relationships of the [macOSCompliancePolicy](../resources/macOSCompliancePolicy.md) objects.|
|[Get macOSCompliancePolicy](../api/macOSCompliancePolicy_get.md)|[macOSCompliancePolicy](../resources/macOSCompliancePolicy.md)|Read properties and relationships of the [macOSCompliancePolicy](../resources/macOSCompliancePolicy.md) object.|
|[Create macOSCompliancePolicy](../api/macOSCompliancePolicy_create.md)|[macOSCompliancePolicy](../resources/macOSCompliancePolicy.md)|Create a new [macOSCompliancePolicy](../resources/macOSCompliancePolicy.md) object.|
|[Delete macOSCompliancePolicy](../api/macOSCompliancePolicy_delete.md)|None|Deletes a [macOSCompliancePolicy](../resources/macOSCompliancePolicy.md).|
|[Update macOSCompliancePolicy](../api/macOSCompliancePolicy_update.md)|[macOSCompliancePolicy](../resources/macOSCompliancePolicy.md)|Update the properties of a [macOSCompliancePolicy](../resources/macOSCompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/macOSCompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/macOSCompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/macOSCompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/macOSCompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|passwordRequired|Boolean|Whether or not to require a password.|
|passwordBlockSimple|Boolean|Indicates whether or not to block simple passwords.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity required before a password is required.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|

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
  "@odata.type": "microsoft.graph.macOSCompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordRequired": true,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordRequiredType": "String"
}
```

