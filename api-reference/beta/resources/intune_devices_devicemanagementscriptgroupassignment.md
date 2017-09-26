# deviceManagementScriptGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a device management script to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementScriptGroupAssignments](../api/intune_devices_devicemanagementscriptgroupassignment_list.md)|[deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) collection|List properties and relationships of the [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) objects.|
|[Get deviceManagementScriptGroupAssignment](../api/intune_devices_devicemanagementscriptgroupassignment_get.md)|[deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md)|Read properties and relationships of the [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) object.|
|[Create deviceManagementScriptGroupAssignment](../api/intune_devices_devicemanagementscriptgroupassignment_create.md)|[deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md)|Create a new [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) object.|
|[Delete deviceManagementScriptGroupAssignment](../api/intune_devices_devicemanagementscriptgroupassignment_delete.md)|None|Deletes a [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md).|
|[Update deviceManagementScriptGroupAssignment](../api/intune_devices_devicemanagementscriptgroupassignment_update.md)|[deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md)|Update the properties of a [deviceManagementScriptGroupAssignment](../resources/intune_devices_devicemanagementscriptgroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device management script group assignment entity.|
|targetGroupId|String|The Id of the Azure Active Directory group we are targeting the script to.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String"
}
```



