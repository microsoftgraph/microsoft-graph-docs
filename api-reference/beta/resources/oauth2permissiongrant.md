---
title: "oAuth2PermissionGrant resource type"
description: "Represents the delegated permissions (OAuth 2.0 scopes) which have been granted to an application, often as a result of user or admin consent process."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# oAuth2PermissionGrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the delegated permissions that have been granted to an application's service principal.

Delegated permissions grants can be created as a result of a user consenting the an application's request to access an API, or created directly.

Delegated permissions are sometimes referred to as "OAuth 2.0 scopes" or "scopes".

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
| [List oAuth2PermissionGrants](../api/oauth2permissiongrant-list.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) collection | Retrieve a list of delegated permission grants. |
| [Get oAuth2PermissionGrant](../api/oauth2permissiongrant-get.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md)  | Read a single delegated permission grant.|
| [Create oAuth2PermissionGrant](../api/oauth2permissiongrant-post.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) | Create a delegated permission grant. |
| [Update oAuth2PermissionGrant](../api/oauth2permissiongrant-update.md) | None | Update oAuth2PermissionGrant object. |
| [Delete oAuth2PermissionGrant](../api/oauth2permissiongrant-delete.md) | None  | Delete a delegated permission grant. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| id | String | Unique identifier for the **oAuth2PermissionGrant**. Read-only.|
| clientId | String | The **id** of the client [service principal](serviceprincipal.md) for the application which is authorized to act on behalf of a signed-in user when accessing an API. Required. Supports `$filter` (`eq` only). |
| consentType | String | Indicates if authorization is granted for the client application to impersonate all users or only a specific user. *AllPrincipals* indicates authorization to impersonate all users. *Principal* indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Non-admin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required. Supports `$filter` (`eq` only). |
| principalId | String | The **id** of the [user](user.md) on behalf of whom the client is authorized to access the resource, when **consentType** is *Principal*. If **consentType** is *AllPrincipals* this value is null. Required when **consentType** is *Principal*. |
| resourceId | String | The **id** of the resource [service principal](serviceprincipal.md) to which access is authorized. This identifies the API which the client is authorized to attempt to call on behalf of a signed-in user. |
| scope | String | A space-separated list of the claim values for delegated permissions which should be included in access tokens for the resource application (the API). For example, `openid User.Read GroupMember.Read.All`. Each claim value should match the **value** field of one of the delegated permissions defined by the API, listed in the **publishedPermissionScopes** property of the resource [service principal](serviceprincipal.md). |
| startTime | DateTimeOffset | Currently, the start time value is ignored, but a value is required when creating an **oAuth2PermissionGrant**. Required. |
| expiryTime | DateTimeOffset | Currently, the end time value is ignored, but a value is required when creating an **oAuth2PermissionGrant**. Required. |

## Relationships

None.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/oauth2permissiongrant-delta.md) function.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List oAuth2PermissionGrants](../api/oauth2permissiongrant-list.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) collection | Retrieve a list of **oauth2PermissionGrant** objects. |
|[Get oAuth2PermissionGrant](../api/oauth2permissiongrant-get.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) |Read the properties and relationships of an **oAuth2PermissionGrant** object.|
|[Update oAuth2PermissionGrant](../api/oauth2permissiongrant-update.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md)	|Update an  **oAuth2PermissionGrant** object. |
|[Delete oAuth2PermissionGrant](../api/oauth2permissiongrant-delete.md) | None |Delete an **oAuth2PermissionGrant** object. |
|[Get delta](../api/oauth2permissiongrant-delta.md)|[oAuth2PermissionGrant](oauth2permissiongrant.md)|Get newly created, updated, or deleted **oauth2permissiongrant** objects without performing a full read of the entire resource collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|clientId|String| The id of the service principal granted consent to impersonate the user when accessing the resource (represented by the resourceId property). |
|consentType|String| Indicates if consent was provided by the administrator (on behalf of the organization) or by an individual. The possible values are *AllPrincipals* or *Principal*. |
|expiryTime|DateTimeOffset| Currently, the expiry time value is ignored. |
|id|String| Unique identifier. Read-only.|
|principalId|String| If consentType is *AllPrincipals* this value is null, and the consent applies to all users in the organization. If consentType is *Principal*, then this property specifies the id of the user that granted consent and applies only for that user. |
|resourceId|String| Specifies the id of the resource service principal to which access has been granted. |
|scope|String| Specifies the value of the [scope](/graph/permissions-reference) claim that the resource application should expect in the OAuth 2.0 access token. For example, *User.Read* |
|startTime|DateTimeOffset| Currently, the start time value is ignored. |

## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.oAuth2PermissionGrant"
}-->

```json
{
  "clientId": "string",
  "consentType": "string",
  "id": "string (identifier)",
  "principalId": "string",
  "resourceId": "string",
  "scope": "string",
  "startTime": "String (timestamp)",
  "expiryTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "oAuth2PermissionGrant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


