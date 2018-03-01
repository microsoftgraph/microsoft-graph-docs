# defaultDeviceCompliancePolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Default device compliance policy rules that are enforced account wide.

Inherits from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List defaultDeviceCompliancePolicies](../api/intune_deviceconfig_defaultdevicecompliancepolicy_list.md)|[defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md) collection|List properties and relationships of the [defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md) objects.|
|[Get defaultDeviceCompliancePolicy](../api/intune_deviceconfig_defaultdevicecompliancepolicy_get.md)|[defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md)|Read properties and relationships of the [defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md) object.|
|[Create defaultDeviceCompliancePolicy](../api/intune_deviceconfig_defaultdevicecompliancepolicy_create.md)|[defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md)|Create a new [defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md) object.|
|[Delete defaultDeviceCompliancePolicy](../api/intune_deviceconfig_defaultdevicecompliancepolicy_delete.md)|None|Deletes a [defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md).|
|[Update defaultDeviceCompliancePolicy](../api/intune_deviceconfig_defaultdevicecompliancepolicy_update.md)|[defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md)|Update the properties of a [defaultDeviceCompliancePolicy](../resources/intune_deviceconfig_defaultdevicecompliancepolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|scheduledActionsForRule|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) collection|The list of scheduled action for this rule Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatuses|[deviceComplianceDeviceStatus](../resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List of DeviceComplianceDeviceStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|userStatuses|[deviceComplianceUserStatus](../resources/intune_deviceconfig_devicecomplianceuserstatus.md) collection|List of DeviceComplianceUserStatus. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceStatusOverview|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Device compliance devices status overview Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|userStatusOverview|[deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md)|Device compliance users status overview Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Compliance Setting State Device Summary Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|assignments|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|The collection of assignments for this compliance policy. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultDeviceCompliancePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.defaultDeviceCompliancePolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```



