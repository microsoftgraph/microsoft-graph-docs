# windowsPhone81CompliancePolicy resource type

This class contains compliance settings for Windows 8.1 Mobile.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81CompliancePolicies](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_list.md)|[windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md) collection|List properties and relationships of the [windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md) objects.|
|[Get windowsPhone81CompliancePolicy](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_get.md)|[windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md)|Read properties and relationships of the [windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md) object.|
|[Create windowsPhone81CompliancePolicy](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_create.md)|[windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md)|Create a new [windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md) object.|
|[Delete windowsPhone81CompliancePolicy](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_delete.md)|None|Deletes a [windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md).|
|[Update windowsPhone81CompliancePolicy](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_update.md)|[windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md)|Update the properties of a [windowsPhone81CompliancePolicy](../resources/intune_deviceconfig_windowsPhone81CompliancePolicy.md) object.|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/intune_deviceconfig_windowsPhone81CompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|
|passwordBlockSimple|Boolean|Whether or not to block syncing the calendar.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequired|Boolean|Whether or not to require a password.|
|osMinimumVersion|String|Minimum Windows Phone version.|
|osMaximumVersion|String|Maximum Windows Phone version.|
|storageRequireEncryption|Boolean|Require encryption on windows phone devices.|

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
  "@odata.type": "microsoft.graph.windowsPhone81CompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81CompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeLock": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordRequiredType": "String",
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordRequired": true,
  "osMinimumVersion": "String",
  "osMaximumVersion": "String",
  "storageRequireEncryption": true
}
```


