#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and permissions to be combined into a single role.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List roleDefinitions](../api/intune_rbac_roledefinition_list.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md) collection|List properties and relationships of the [roleDefinition](../resources/intune_rbac_roledefinition.md) objects.|
|[Get roleDefinition](../api/intune_rbac_roledefinition_get.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Read properties and relationships of the [roleDefinition](../resources/intune_rbac_roledefinition.md) object.|
|[Create roleDefinition](../api/intune_rbac_roledefinition_create.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Create a new [roleDefinition](../resources/intune_rbac_roledefinition.md) object.|
|[Delete roleDefinition](../api/intune_rbac_roledefinition_delete.md)|None|Deletes a [roleDefinition](../resources/intune_rbac_roledefinition.md).|
|[Update roleDefinition](../api/intune_rbac_roledefinition_update.md)|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Update the properties of a [roleDefinition](../resources/intune_rbac_roledefinition.md) object.|
|[List roleAssignments](../api/intune_rbac_roleassignment_list.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|List properties and relationships of the [roleAssignment](../resources/intune_rbac_roleassignment.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|Display Name of the Role definition.|
|description|String|Description of the Role definition.|
|permissions|[rolePermission](../resources/intune_rbac_rolepermission.md) collection|List of Resource Permissions this role is allowed to perform. These must match the actionName that is defined as part of the resourcePermission.|
|isBuiltInRoleDefinition|Boolean|Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|roleAssignments|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|List of Role assignments for this role definition.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleDefinition"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.roleDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.rolePermission",
      "actions": [
        "String"
      ]
    }
  ],
  "isBuiltInRoleDefinition": true
}
```



