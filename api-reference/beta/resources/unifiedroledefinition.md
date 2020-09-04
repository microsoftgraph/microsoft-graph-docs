---
title: "unifiedRoleDefinition resource type"
description: "A unified role definition is a collection of permissions"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# unifiedRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unifiedRoleDefinition is a collection of permissions listing the operations that can be performed, such as read, write, and delete.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List unifiedRoleDefinition](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Read a list of unifiedRoleDefinition objects, and their properties. |
| [Get unifiedRoleDefinition](../api/unifiedroledefinition-get.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Read the properties of a unifiedRoleDefinition object. |
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a unifiedRoleDefinition object. |
| [Update unifiedRoleDefinition](../api/unifiedroledefinition-update.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Update a unifiedRoleDefinition object. |
| [Delete unifiedRoleDefinition](../api/unifiedroledefinition-delete.md) | None | Delete a unifiedRoleDefinition object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String| The description for the unifiedRoleDefinition. Read-only when isBuiltIn is true. |
|displayName|String| The display name for the unifiedRoleDefinition. Read-only when isBuiltIn is true. Required.|
|id|String| The unique identifier for the unifiedRoleDefinition. Key, not nullable, Read-only. |
|isBuiltIn|Boolean| Flag indicating if the unifiedRoleDefinition is part of the default set included with the product or custom. Read-only. |
|isEnabled|Boolean| Flag indicating if the role is enabled for assignment. If false the role is not available for assignment. Read-only when isBuiltIn is true. |
|resourceScopes|String collection| List of scopes permissions granted by the role definition apply to. Currently only "/" is supported. Read-only when isBuiltIn is true. **DO NOT USE. This is going to be deprecated soon. Attach scope to role assignment** | 
|rolePermissions|[unifiedRolePermission](unifiedrolepermission.md) collection| List of permissions included in the role. Read-only when isBuiltIn is true. Required. |
|templateId|String| Custom template identifier that can be set when isBuiltIn is false. This identifier is typically used if one needs an identifier to be the same across different directories. Read-only when isBuiltIn is true. |
|inheritsPermissionsFrom| [unifiedRoleDefinition](unifiedroledefinition.md) collection| Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles support this attribute. |
|version|String| Indicates version of the unifiedRoleDefinition. Read-only when isBuiltIn is true.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleDefinition",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isBuiltIn": true,
  "isEnabled": true,
  "resourceScopes": ["String"],
  "rolePermissions": [{"@odata.type": "microsoft.graph.unifiedRolePermission"}],
  "templateId": "String",
  "inheritsPermissionsFrom": [{"@odata.type": "microsoft.graph.unifiedRoleDefinition"}],
  "version": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
