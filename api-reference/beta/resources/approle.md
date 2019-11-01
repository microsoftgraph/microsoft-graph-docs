---
title: "appRole resource type"
description: "Represents an application role that may be requested by a client application calling another application or that may be used to assign an application to users or groups in a specified application role. The **appRoles** property of the servicePrincipal entity and of the application entity is a collection of **appRole**."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# appRole resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application role that may be requested by a client application calling another application or that may be used to assign an application to users or groups in a specified application role. The **appRoles** property of the [servicePrincipal](serviceprincipal.md) entity and of the [application](application.md) entity is a collection of **appRole**.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowedMemberTypes|String collection|Specifies whether this app role definition can be assigned to users and groups by setting to "User", or to other applications (that are accessing this application in daemon service scenarios) by setting to "Application", or to both.|
|description|String|Permission help text that appears in the admin app assignment and consent experiences.|
|displayName|String|Display name for the permission that appears in the admin consent and app assignment experiences.|
|id|Guid|Unique role identifier inside the **appRoles** collection. When creating a new app role, a new Guid identifier must be provided. |
|isEnabled|Boolean|When creating or updating an app role, this must be set to **true** (which is the default). To delete a role, this must first be set to **false**.  At that point, in a subsequent call, this role may be removed.|
|origin|String| Read-only. Specifies if the app role is defined on the Application object or on the ServicePrincipal object. Must _not_ be included in any POST or PATCH requests. |
|value|String|Specifies the value which will be included in the `roles` claim in authentication and access tokens. Must not exceed 120 characters in length. Allowed characters are `:` `!` `#` `$` `%` `&` `'` `(` `)` `*` `+` `,` `-` `.` `/` `:` `;` <code>&lt;</code> `=` <code>&gt;</code> `?` `@` `[` `]` `^` `+` `_` <code>&#96;</code> `{` <code>&#124;</code> `}` `~`, as well as characters in the ranges `0-9`, `A-Z` and `a-z`. Any other character, including the space character, are not allowed.  |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appRole"
}-->

```json
{
  "allowedMemberTypes": ["string"],
  "description": "string",
  "displayName": "string",
  "id": "guid",
  "isEnabled": true,
  "origin": "string",
  "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "appRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
