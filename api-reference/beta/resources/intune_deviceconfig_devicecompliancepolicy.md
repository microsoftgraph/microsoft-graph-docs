# deviceCompliancePolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This is the base class for Compliance policy. Compliance policies are platform specific and individual per-platform compliance policies inherit from here. 
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_devicecompliancepolicy_list.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|List properties and relationships of the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) objects.|
|[Get deviceCompliancePolicy](../api/intune_deviceconfig_devicecompliancepolicy_get.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Read properties and relationships of the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) object.|
|[assign action](../api/intune_deviceconfig_devicecompliancepolicy_assign.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|Not yet documented|
|[scheduleActionsForRules action](../api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus.|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus.|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Device compliance devices status overview|
|userStatusOverview|[deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md)|Device compliance users status overview|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Compliance Setting State Device Summary|
|assignments|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|The collection of assignments for this compliance policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicy"
}
-->
``` json
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



