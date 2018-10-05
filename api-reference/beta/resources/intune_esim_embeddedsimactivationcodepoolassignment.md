# embeddedSIMActivationCodePoolAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The embedded SIM activation code pool assignment entity assigns a specific embeddedSIMActivationCodePool to an AAD device group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List embeddedSIMActivationCodePoolAssignments](../api/intune_esim_embeddedsimactivationcodepoolassignment_list.md)|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) collection|List properties and relationships of the [embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) objects.|
|[Get embeddedSIMActivationCodePoolAssignment](../api/intune_esim_embeddedsimactivationcodepoolassignment_get.md)|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md)|Read properties and relationships of the [embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) object.|
|[Create embeddedSIMActivationCodePoolAssignment](../api/intune_esim_embeddedsimactivationcodepoolassignment_create.md)|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md)|Create a new [embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) object.|
|[Delete embeddedSIMActivationCodePoolAssignment](../api/intune_esim_embeddedsimactivationcodepoolassignment_delete.md)|None|Deletes a [embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md).|
|[Update embeddedSIMActivationCodePoolAssignment](../api/intune_esim_embeddedsimactivationcodepoolassignment_update.md)|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md)|Update the properties of a [embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the embedded SIM activation code pool assignment. System generated value assigned when created.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The type of groups targeted by the embedded SIM activation code pool.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.embeddedSIMActivationCodePoolAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.embeddedSIMActivationCodePoolAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```



