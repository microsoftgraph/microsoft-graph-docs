# deviceManagementScriptAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a device management script to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementScriptAssignments](../api/intune_devices_devicemanagementscriptassignment_list.md)|[deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md) collection|List properties and relationships of the [deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md) objects.|
|[Get deviceManagementScriptAssignment](../api/intune_devices_devicemanagementscriptassignment_get.md)|[deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md)|Read properties and relationships of the [deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md) object.|
|[Create deviceManagementScriptAssignment](../api/intune_devices_devicemanagementscriptassignment_create.md)|[deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md)|Create a new [deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md) object.|
|[Delete deviceManagementScriptAssignment](../api/intune_devices_devicemanagementscriptassignment_delete.md)|None|Deletes a [deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md).|
|[Update deviceManagementScriptAssignment](../api/intune_devices_devicemanagementscriptassignment_update.md)|[deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md)|Update the properties of a [deviceManagementScriptAssignment](../resources/intune_devices_devicemanagementscriptassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device management script group assignment entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The Id of the Azure Active Directory group we are targeting the script to.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



