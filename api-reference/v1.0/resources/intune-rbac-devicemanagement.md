---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-rbac-devicemanagement-get.md)|[deviceManagement](../resources/intune-rbac-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-rbac-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-rbac-devicemanagement-update.md)|[deviceManagement](../resources/intune-rbac-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-rbac-devicemanagement.md) object.|
|[getEffectivePermissions function](../api/intune-rbac-devicemanagement-geteffectivepermissions.md)|[rolePermission](../resources/intune-rbac-rolepermission.md) collection|Retrieves the effective permissions of the currently authenticated user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleDefinitions|[roleDefinition](../resources/intune-rbac-roledefinition.md) collection|The Role Definitions.|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|resourceOperations|[resourceOperation](../resources/intune-rbac-resourceoperation.md) collection|The Resource Operations.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```




