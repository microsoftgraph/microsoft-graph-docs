# deviceManagement resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_rbac_devicemanagement_get.md)|[deviceManagement](../resources/intune_rbac_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_rbac_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_rbac_devicemanagement_update.md)|[deviceManagement](../resources/intune_rbac_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_rbac_devicemanagement.md) object.|
|[getEffectivePermissions function](../api/intune_rbac_devicemanagement_geteffectivepermissions.md)|String collection|Not yet documented|
|[List roleDefinitions](../api/intune_rbac_roledefinition_list.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|List properties and relationships of the [roleDefinition](../resources/intune_rbac_roledefinition.md) objects.|
|[Create roleDefinition](../api/intune_rbac_roledefinition_create.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Create a new [roleDefinition](../resources/intune_rbac_roledefinition.md) object.|
|[List roleAssignments](../api/intune_rbac_roleassignment_list.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|List properties and relationships of the [roleAssignment](../resources/intune_rbac_roleassignment.md) objects.|
|[Create roleAssignment](../api/intune_rbac_roleassignment_create.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md)|Create a new [roleAssignment](../resources/intune_rbac_roleassignment.md) object.|
|[List resourceOperations](../api/intune_rbac_resourceoperation_list.md)|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|List properties and relationships of the [resourceOperation](../resources/intune_rbac_resourceoperation.md) objects.|
|[Create resourceOperation](../api/intune_rbac_resourceoperation_create.md)|[resourceOperation](../resources/intune_rbac_resourceoperation.md)|Create a new [resourceOperation](../resources/intune_rbac_resourceoperation.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|roleDefinitions|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|The Role Definitions.|
|roleAssignments|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|The Role Assignments.|
|resourceOperations|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|The Resource Operations.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



