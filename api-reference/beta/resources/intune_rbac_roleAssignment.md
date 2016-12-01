# roleAssignment resource type

The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List roleAssignments](../api/intune_rbac_roleAssignment_list.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md) collection|List properties and relationships of the [roleAssignment](../resources/intune_rbac_roleAssignment.md) objects.|
|[Get roleAssignment](../api/intune_rbac_roleAssignment_get.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md)|Read properties and relationships of the [roleAssignment](../resources/intune_rbac_roleAssignment.md) object.|
|[Create roleAssignment](../api/intune_rbac_roleAssignment_create.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md)|Create a new [roleAssignment](../resources/intune_rbac_roleAssignment.md) object.|
|[Delete roleAssignment](../api/intune_rbac_roleAssignment_delete.md)|None|Deletes a [roleAssignment](../resources/intune_rbac_roleAssignment.md).|
|[Update roleAssignment](../api/intune_rbac_roleAssignment_update.md)|[roleAssignment](../resources/intune_rbac_roleAssignment.md)|Update the properties of a [roleAssignment](../resources/intune_rbac_roleAssignment.md) object.|
|[Get roleDefinition](../api/intune_rbac_roleAssignment_get_roleDefinition.md)|[roleDefinition](../resources/intune_rbac_roleDefinition.md)|Get the [roleDefinition](../resources/intune_rbac_roleDefinition.md) from the roleDefinition navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the role Assignment.|
|description|String|Description of the Role Assignment.|
|members|String collection|The list of ids of role member security groups. These are IDs from Azure Active Directory.|
|scopeMembers|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|roleDefinition|[roleDefinition](../resources/intune_rbac_roleDefinition.md)|Role definition this assignment is part of.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.roleAssignment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "members": [
    "String"
  ],
  "scopeMembers": [
    "String"
  ]
}
```


