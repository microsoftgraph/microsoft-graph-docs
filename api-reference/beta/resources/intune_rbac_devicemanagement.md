# deviceManagement resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_rbac_devicemanagement_get.md)|[deviceManagement](../resources/intune_rbac_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_rbac_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_rbac_devicemanagement_update.md)|[deviceManagement](../resources/intune_rbac_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_rbac_devicemanagement.md) object.|
|[List roleDefinitions](../api/intune_rbac_devicemanagement_list_roledefinition.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|Get the roleDefinitions from the roleDefinitions navigation property.|
|[Create roleDefinition](../api/intune_rbac_devicemanagement_create_roledefinition.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Create a new [roleDefinition](../resources/intune_rbac_roledefinition.md) by posting to the roleDefinitions collection.|
|[List roleAssignments](../api/intune_rbac_devicemanagement_list_roleassignment.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|Get the roleAssignments from the roleAssignments navigation property.|
|[Create roleAssignment](../api/intune_rbac_devicemanagement_create_roleassignment.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md)|Create a new [roleAssignment](../resources/intune_rbac_roleassignment.md) by posting to the roleAssignments collection.|
|[List resourceOperations](../api/intune_rbac_devicemanagement_list_resourceoperation.md)|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|Get the resourceOperations from the resourceOperations navigation property.|
|[Create resourceOperation](../api/intune_rbac_devicemanagement_create_resourceoperation.md)|[resourceOperation](../resources/intune_rbac_resourceoperation.md)|Create a new [resourceOperation](../resources/intune_rbac_resourceoperation.md) by posting to the resourceOperations collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|roleDefinitions|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|The Role Definitions.|
|roleAssignments|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|The Role Assignments.|
|resourceOperations|[resourceOperation](../resources/intune_rbac_resourceoperation.md) collection|The Resource Operations.|

### JSON Representation
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



