---
title: "deviceAndAppManagementRoleAssignment resource type"
description: "The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAndAppManagementRoleAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.


Inherits from [roleAssignment](../resources/intune-rbac-roleassignment.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementRoleAssignments](../api/intune-rbac-deviceandappmanagementroleassignment-list.md)|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) collection|List properties and relationships of the [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) objects.|
|[Get deviceAndAppManagementRoleAssignment](../api/intune-rbac-deviceandappmanagementroleassignment-get.md)|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md)|Read properties and relationships of the [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object.|
|[Create deviceAndAppManagementRoleAssignment](../api/intune-rbac-deviceandappmanagementroleassignment-create.md)|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md)|Create a new [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object.|
|[Delete deviceAndAppManagementRoleAssignment](../api/intune-rbac-deviceandappmanagementroleassignment-delete.md)|None|Deletes a [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md).|
|[Update deviceAndAppManagementRoleAssignment](../api/intune-rbac-deviceandappmanagementroleassignment-update.md)|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md)|Update the properties of a [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|displayName|String|The display or friendly name of the role Assignment. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|description|String|Description of the Role Assignment. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|resourceScopes|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|members|String collection|The list of ids of role member security groups. These are IDs from Azure Active Directory.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleDefinition|[roleDefinition](../resources/intune-rbac-roledefinition.md)|Role definition this assignment is part of. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRoleAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleAssignment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "resourceScopes": [
    "String"
  ],
  "members": [
    "String"
  ]
}
```




