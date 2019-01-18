---
title: "roleScopeTag resource type"
description: "Role Scope Tag"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# roleScopeTag resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Role Scope Tag
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List roleScopeTags](../api/intune-rbac-rolescopetag-list.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|List properties and relationships of the [roleScopeTag](../resources/intune-rbac-rolescopetag.md) objects.|
|[Get roleScopeTag](../api/intune-rbac-rolescopetag-get.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Read properties and relationships of the [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|
|[Create roleScopeTag](../api/intune-rbac-rolescopetag-create.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Create a new [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|
|[Delete roleScopeTag](../api/intune-rbac-rolescopetag-delete.md)|None|Deletes a [roleScopeTag](../resources/intune-rbac-rolescopetag.md).|
|[Update roleScopeTag](../api/intune-rbac-rolescopetag-update.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Update the properties of a [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the Role Scope Tag.|
|description|String|Description of the Role Scope Tag.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleScopeTag"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleScopeTag",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```





