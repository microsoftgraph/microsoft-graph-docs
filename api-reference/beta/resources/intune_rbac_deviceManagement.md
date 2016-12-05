# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_rbac_deviceManagement_get.md)|[deviceManagement](../resources/intune_rbac_deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_rbac_deviceManagement.md) object.|
|[Update deviceManagement](../api/intune_rbac_deviceManagement_update.md)|[deviceManagement](../resources/intune_rbac_deviceManagement.md)|Update the properties of a [deviceManagement](../resources/intune_rbac_deviceManagement.md) object.|
|[List roleDefinitions](../api/intune_rbac_deviceManagement_list_roleDefinition.md)|[roleDefinition](../resources/intune_rbac_roleDefinition.md) collection|Get the roleDefinitions from the roleDefinitions navigation property.|
|[Create roleDefinition](../api/intune_rbac_deviceManagement_create_roleDefinition.md)|[roleDefinition](../resources/intune_rbac_roleDefinition.md)|Create a new [roleDefinition](../resources/intune_rbac_roleDefinition.md) by posting to the roleDefinitions collection.|
|[List roleAssignments](../api/intune_rbac_deviceManagement_list_roleAssignment.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md) collection|Get the roleAssignments from the roleAssignments navigation property.|
|[Create roleAssignment](../api/intune_rbac_deviceManagement_create_roleAssignment.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md)|Create a new [roleAssignment](../resources/intune_rbac_roleAssignment.md) by posting to the roleAssignments collection.|
|[List resourceOperations](../api/intune_rbac_deviceManagement_list_resourceOperation.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md) collection|Get the resourceOperations from the resourceOperations navigation property.|
|[Create resourceOperation](../api/intune_rbac_deviceManagement_create_resourceOperation.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md)|Create a new [resourceOperation](../resources/intune_rbac_resourceOperation.md) by posting to the resourceOperations collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|roleDefinitions|[roleDefinition](../resources/intune_rbac_roleDefinition.md) collection|The Role Definitions.|
|roleAssignments|[roleAssignment](../resources/intune_rbac_roleAssignment.md) collection|The Role Assignments.|
|resourceOperations|[resourceOperation](../resources/intune_rbac_resourceOperation.md) collection|The Resource Operations.|

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



