# deviceAndAppManagementRoleDefinition resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.

Inherits from [roleDefinition](../resources/intune_rbac_roledefinition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementRoleDefinitions](../api/intune_rbac_deviceandappmanagementroledefinition_list.md)|[deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md) collection|List properties and relationships of the [deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md) objects.|
|[Get deviceAndAppManagementRoleDefinition](../api/intune_rbac_deviceandappmanagementroledefinition_get.md)|[deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md)|Read properties and relationships of the [deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md) object.|
|[Create deviceAndAppManagementRoleDefinition](../api/intune_rbac_deviceandappmanagementroledefinition_create.md)|[deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md)|Create a new [deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md) object.|
|[Delete deviceAndAppManagementRoleDefinition](../api/intune_rbac_deviceandappmanagementroledefinition_delete.md)|None|Deletes a [deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md).|
|[Update deviceAndAppManagementRoleDefinition](../api/intune_rbac_deviceandappmanagementroledefinition_update.md)|[deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md)|Update the properties of a [deviceAndAppManagementRoleDefinition](../resources/intune_rbac_deviceandappmanagementroledefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|displayName|String|Display Name of the Role definition. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|description|String|Description of the Role definition. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|permissions|[rolePermission](../resources/intune_rbac_rolepermission.md) collection|List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|rolePermissions|[rolePermission](../resources/intune_rbac_rolepermission.md) collection|List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|isBuiltInRoleDefinition|Boolean|Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|
|isBuiltIn|Boolean|Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleAssignments|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|List of Role assignments for this role definition. Inherited from [roleDefinition](../resources/intune_rbac_roledefinition.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRoleDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.rolePermission",
      "actions": [
        "String"
      ],
      "resourceActions": [
        {
          "@odata.type": "microsoft.graph.resourceAction",
          "allowedResourceActions": [
            "String"
          ],
          "notAllowedResourceActions": [
            "String"
          ]
        }
      ]
    }
  ],
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.rolePermission",
      "actions": [
        "String"
      ],
      "resourceActions": [
        {
          "@odata.type": "microsoft.graph.resourceAction",
          "allowedResourceActions": [
            "String"
          ],
          "notAllowedResourceActions": [
            "String"
          ]
        }
      ]
    }
  ],
  "isBuiltInRoleDefinition": true,
  "isBuiltIn": true
}
```



