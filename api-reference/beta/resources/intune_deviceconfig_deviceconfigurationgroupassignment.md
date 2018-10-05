# deviceConfigurationGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device configuration group assignment.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_deviceconfigurationgroupassignment_list.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) objects.|
|[Get deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceconfigurationgroupassignment_get.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Read properties and relationships of the [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|
|[Create deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceconfigurationgroupassignment_create.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Create a new [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|
|[Delete deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceconfigurationgroupassignment_delete.md)|None|Deletes a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md).|
|[Update deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceconfigurationgroupassignment_update.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Update the properties of a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|
|excludeGroup|Boolean|Indicates if this group is should be excluded. Defaults that the group should be included|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfiguration|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|The navigation link to the Device Configuration being targeted.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String",
  "excludeGroup": true
}
```



