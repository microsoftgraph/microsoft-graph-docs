---
title: "appRoleAssignment resource type"
description: "Used to record when a user, group, or service principal is assigned to an app role on an application's service principal. You can create, read and delete app role assignments."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# appRoleAssignment resource type

Namespace: microsoft.graph

Used to record when a user, group, or service principal is assigned an app role for an app.

An app role assignment is a relationship between the assigned principal (a user, a group, or a service principal), a resource application (the app's service principal) and an app role defined on the resource application.

When the [app role](approle.md) which has been assigned to a principal has a non-empty **value** property, this will be included in the **roles** claim of tokens where the subject is the  assigned principal (e.g. SAML responses, ID tokens, access tokens identifying a signed-in user, or an access token identifying a service principal). Applications and APIs use these claims as part of their authorization logic.

A user can be assigned an app role directly. If an app role is assigned to a group, direct members of the group are also considered to have been assigned the app role. When a user is assigned an app role for an application, a tile for that application is displayed in the user's [MyApps portal](/azure/active-directory/user-help/my-apps-portal-end-user-access) and [Microsoft 365 app launcher](https://support.office.com/article/meet-the-office-365-app-launcher-79f12104-6fed-442f-96a0-eb089a3f476a).

An app role assignment where the assigned principal is a service principal is an [app-only permission](/azure/active-directory/develop/v2-permissions-and-consent#permission-types) grant. When a user or admin consents to an app-only permission, an app role assignment is created where the assigned principal is the service principal for the client application, and the resource is the target API's service principal.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| id | String | A unique identifier for the **appRoleAssignment** Key. Not nullable. Read-only. |
| creationTimestamp | DateTimeOffset | The time when the app role assignment was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. Does not support `$filter`. |
| principalId | Guid | The unique identifier (**id**) for the [user](user.md), [group](group.md) or [service principal](serviceprincipal.md) being granted the app role. Required on create. Does not support `$filter`. |
| principalType | String | The type of the assigned principal. This can either be "User", "Group" or "ServicePrincipal". Read-only. Does not support `$filter`. |
| principalDisplayName | String |The display name of the user, group, or service principal that was granted the app role assignment. Read-only. Supports `$filter` (`eq` and `startswith`). |
| resourceId | Guid |The unique identifier (**id**) for the resource [service principal](serviceprincipal.md) for which the assignment is made. Required on create. Supports `$filter` (`eq` only). |
| resourceDisplayName | String | The display name of the resource app's service principal to which the assignment is made. Does not support `$filter`. |
| appRoleId | Guid | The identifier (**id**) for the [app role](approle.md) which is assigned to the principal. This app role must be exposed in the **appRoles** property on the resource application's service principal (**resourceId**). If the resource application has not declared any app roles, a default app role ID of `00000000-0000-0000-0000-000000000000` can be specified to signal that the principal is assigned to the resource app without any specific app roles. Required on create. Does not support `$filter`. |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appRoleAssignment"
}-->

```json
{
  "id": "string",
  "creationTimestamp": "String (timestamp)",
  "principalDisplayName": "string",
  "principalId": "guid",
  "principalType": "string",
  "resourceDisplayName": "string",
  "resourceId": "guid",
  "appRoleId": "guid"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "appRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->