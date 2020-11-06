---
title: "directoryRole resource type"
description: "Represents an Azure AD directory role. Azure AD directory roles are also known as *administrator roles*."
localization_priority: Priority
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# directoryRole resource type

Namespace: microsoft.graph

Represents an Azure AD directory role. Azure AD directory roles are also known as *administrator roles*. For more information about directory (administrator) roles, see [Assigning administrator roles in Azure AD](/azure/active-directory/users-groups-roles/directory-assign-admin-roles). With the Microsoft Graph, you can assign users to directory roles to grant them the permissions of the target role. To read a directory role or update its members, it must first be activated in the tenant. Only the Company Administrators directory role is activated by default. To activate other available directory roles you send a POST request with the ID of the [directoryRoleTemplate](directoryroletemplate.md) on which the directory role is based. [List directory role templates](../api/directoryroletemplate-list.md) to get all the other available directory roles. Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/directoryrole-delta.md) function.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get directoryRole](../api/directoryrole-get.md) | [directoryRole](directoryrole.md) | Read properties and relationships of directoryRole object. |
|[List directoryRoles](../api/directoryrole-list.md) | [directoryRole](directoryrole.md) collection | List the directory roles that are activated in the tenant. |
|[Add member](../api/directoryrole-post-members.md) |[directoryObject](directoryobject.md)| Add a user to the directory role by posting to the members navigation property.|
|[List members](../api/directoryrole-list-members.md) |[directoryObject](directoryobject.md) collection| Get the users that are members of the directory role from the members navigation property.|
|[Remove a member](../api/directoryrole-delete-member.md) |[directoryObject](directoryobject.md)| Remove a user from the directory role.|
|[Activate directoryRole](../api/directoryrole-post-directoryroles.md) |[directoryRole](directoryrole.md) | Activate a directory role.|
|[delta](../api/directoryrole-delta.md)|directoryRole collection| Get incremental changes for directory roles. |

## Properties
| Property   | Type | Description |
|:---------------|:--------|:----------|
|description|String|The description for the directory role. Read-only. |
|displayName|String|The display name for the directory role. Read-only. |
|id|String|The unique identifier for the directory role. Inherited from [directoryObject](directoryobject.md). Key, Not nullable, Read-only.|
|roleTemplateId|String| The **id** of the [directoryRoleTemplate](directoryroletemplate.md) that this role is based on. The property must be specified when activating a directory role in a tenant with a POST operation. After the directory role has been activated, the property is read only. |

## Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|members|[directoryObject](directoryobject.md) collection|Users that are members of this directory role. HTTP Methods: GET, POST, DELETE. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [
    "memberOf",
    "members",
    "ownedObjects",
    "owners"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.directoryRole",
  "@odata.annotations": [
    {
      "capabilities": {
        "toppable": false
      }
    }
  ]
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "roleTemplateId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->