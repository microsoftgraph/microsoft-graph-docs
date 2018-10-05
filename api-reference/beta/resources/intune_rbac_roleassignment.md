# roleAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List roleAssignments](../api/intune_rbac_roleassignment_list.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md) collection|List properties and relationships of the [roleAssignment](../resources/intune_rbac_roleassignment.md) objects.|
|[Get roleAssignment](../api/intune_rbac_roleassignment_get.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md)|Read properties and relationships of the [roleAssignment](../resources/intune_rbac_roleassignment.md) object.|
|[Create roleAssignment](../api/intune_rbac_roleassignment_create.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md)|Create a new [roleAssignment](../resources/intune_rbac_roleassignment.md) object.|
|[Delete roleAssignment](../api/intune_rbac_roleassignment_delete.md)|None|Deletes a [roleAssignment](../resources/intune_rbac_roleassignment.md).|
|[Update roleAssignment](../api/intune_rbac_roleassignment_update.md)|[roleAssignment](../resources/intune_rbac_roleassignment.md)|Update the properties of a [roleAssignment](../resources/intune_rbac_roleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the role Assignment.|
|description|String|Description of the Role Assignment.|
|scopeMembers|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory.|
|scopeType|[roleAssignmentScopeType](../resources/intune_rbac_roleassignmentscopetype.md)|Specifies the type of scope for a Role Assignment. Default type 'ResourceScope' allows assignment of ResourceScopes. For 'AllDevices', 'AllLicensedUsers', and 'AllDevicesAndLicensedUsers', the ResourceScopes property should be left empty. Possible values are: `resourceScope`, `allDevices`, `allLicensedUsers`, `allDevicesAndLicensedUsers`.|
|resourceScopes|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleDefinition|[roleDefinition](../resources/intune_rbac_roledefinition.md)|Role definition this assignment is part of.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleAssignment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "scopeMembers": [
    "String"
  ],
  "scopeType": "String",
  "resourceScopes": [
    "String"
  ]
}
```



