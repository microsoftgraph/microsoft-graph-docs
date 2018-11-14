# deviceConfigurationAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The device configuration assignment entity assigns an AAD group to a specific device configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationAssignments](../api/intune_deviceconfig_deviceconfigurationassignment_list.md)|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|List properties and relationships of the [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) objects.|
|[Get deviceConfigurationAssignment](../api/intune_deviceconfig_deviceconfigurationassignment_get.md)|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md)|Read properties and relationships of the [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) object.|
|[Create deviceConfigurationAssignment](../api/intune_deviceconfig_deviceconfigurationassignment_create.md)|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md)|Create a new [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) object.|
|[Delete deviceConfigurationAssignment](../api/intune_deviceconfig_deviceconfigurationassignment_delete.md)|None|Deletes a [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md).|
|[Update deviceConfigurationAssignment](../api/intune_deviceconfig_deviceconfigurationassignment_update.md)|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md)|Update the properties of a [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the assignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The assignment target for the device configuration.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



