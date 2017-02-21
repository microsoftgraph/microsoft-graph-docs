# deviceCompliancePolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This is the base class for Compliance policy. Compliance policies are platform specific and individual per-platform compliance policies inherit from here. 
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_devicecompliancepolicy_list.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|List properties and relationships of the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) objects.|
|[Get deviceCompliancePolicy](../api/intune_deviceconfig_devicecompliancepolicy_get.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Read properties and relationships of the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) object.|
|[assign action](../api/intune_deviceconfig_devicecompliancepolicy_assign.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|Not yet documented|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_devicecompliancepolicy_list_devicecompliancepolicygroupassignment.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|Get the deviceCompliancePolicyGroupAssignments from the groupAssignments navigation property.|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_devicecompliancepolicy_list_devicecompliancescheduledactionforrule.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|Get the deviceComplianceScheduledActionForRules from the scheduledActionsForRule navigation property.|
|[List deviceComplianceDeviceStatuses](../api/intune_deviceconfig_devicecompliancepolicy_list_devicecompliancedevicestatus.md)|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|Get the deviceComplianceDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceComplianceUserStatuses](../api/intune_deviceconfig_devicecompliancepolicy_list_devicecomplianceuserstatus.md)|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|Get the deviceComplianceUserStatuses from the userStatuses navigation property.|
|[Get deviceComplianceDeviceOverview](../api/intune_deviceconfig_devicecompliancepolicy_get_devicecompliancedeviceoverview.md)|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Get the [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|The list of group assignments for this compliance policy.|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus.|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus.|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Device compliance devices status overview|

## JSON Representation
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



