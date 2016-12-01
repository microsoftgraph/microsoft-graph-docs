# deviceCompliancePolicy resource type

This is the base class for Compliance policy. Compliance policies are platform specific and individual per-platform compliance policies inherit from here. 
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicies](../api/deviceCompliancePolicy_list.md)|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md) collection|List properties and relationships of the [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md) objects.|
|[Get deviceCompliancePolicy](../api/deviceCompliancePolicy_get.md)|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|Read properties and relationships of the [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md) object.|
|[assign action](../api/deviceCompliancePolicy_assign.md)|[deviceCompliancePolicyAssignment](../resources/deviceCompliancePolicyAssignment.md) collection|Not yet documented|
|[List deviceCompliancePolicyGroupAssignments](../api/deviceCompliancePolicy_list_deviceCompliancePolicyGroupAssignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/deviceCompliancePolicy_list_deviceComplianceScheduledActionForRule.md)|[deviceComplianceScheduledActionForRule](../resources/deviceComplianceScheduledActionForRule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuss](../api/deviceCompliancePolicy_list_deviceComplianceDeviceStatus.md)|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|Get the deviceComplianceDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuss](../api/deviceCompliancePolicy_list_deviceComplianceUserStatus.md)|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|Get the deviceComplianceUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|The list of group assignments for this compliance policy.|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/deviceComplianceScheduledActionForRule.md) collection|The list of scheduled action for this rule|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/deviceComplianceDeviceStatus.md) collection|List of DeviceComplianceDeviceStatus.|
|userStatuses|[deviceComplianceUserStatus](../resources/deviceComplianceUserStatus.md) collection|List of DeviceComplianceUserStatus.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```


