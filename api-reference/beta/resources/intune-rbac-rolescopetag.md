---
title: "roleScopeTag resource type"
description: "Role Scope Tag"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# roleScopeTag resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Role Scope Tag

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List roleScopeTags](../api/intune-rbac-rolescopetag-list.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|List properties and relationships of the [roleScopeTag](../resources/intune-rbac-rolescopetag.md) objects.|
|[Get roleScopeTag](../api/intune-rbac-rolescopetag-get.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Read properties and relationships of the [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|
|[Create roleScopeTag](../api/intune-rbac-rolescopetag-create.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Create a new [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|
|[Delete roleScopeTag](../api/intune-rbac-rolescopetag-delete.md)|None|Deletes a [roleScopeTag](../resources/intune-rbac-rolescopetag.md).|
|[Update roleScopeTag](../api/intune-rbac-rolescopetag-update.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md)|Update the properties of a [roleScopeTag](../resources/intune-rbac-rolescopetag.md) object.|
|[assign action](../api/intune-rbac-rolescopetag-assign.md)|[roleScopeTagAutoAssignment](../resources/intune-rbac-rolescopetagautoassignment.md) collection|Not yet documented|
|[getRoleScopeTagsById action](../api/intune-rbac-rolescopetag-getrolescopetagsbyid.md)|[roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection|Not yet documented|
|[hasCustomRoleScopeTag function](../api/intune-rbac-rolescopetag-hascustomrolescopetag.md)|Boolean|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the Role Scope Tag.|
|description|String|Description of the Role Scope Tag.|
|isBuiltIn|Boolean|Description of the Role Scope Tag.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[roleScopeTagAutoAssignment](../resources/intune-rbac-rolescopetagautoassignment.md) collection|The list of assignments for this Role Scope Tag.|

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
  "description": "String",
  "isBuiltIn": true
}
```




