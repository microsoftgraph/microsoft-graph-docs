# officeClientConfigurationAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Office Client Configuration Assignment.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List officeClientConfigurationAssignments](../api/intune_cirrus_officeclientconfigurationassignment_list.md)|[officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) collection|List properties and relationships of the [officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) objects.|
|[Get officeClientConfigurationAssignment](../api/intune_cirrus_officeclientconfigurationassignment_get.md)|[officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md)|Read properties and relationships of the [officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) object.|
|[Create officeClientConfigurationAssignment](../api/intune_cirrus_officeclientconfigurationassignment_create.md)|[officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md)|Create a new [officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) object.|
|[Delete officeClientConfigurationAssignment](../api/intune_cirrus_officeclientconfigurationassignment_delete.md)|None|Deletes a [officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md).|
|[Update officeClientConfigurationAssignment](../api/intune_cirrus_officeclientconfigurationassignment_update.md)|[officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md)|Update the properties of a [officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the OfficeConfigurationAssignment.|
|target|[officeConfigurationAssignmentTarget](../resources/intune_cirrus_officeconfigurationassignmenttarget.md)|The target assignment defined by the admin.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeClientConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeClientConfigurationAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.officeConfigurationAssignmentTarget"
  }
}
```



