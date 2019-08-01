---
title: "oAuth2PermissionGrant resource type"
description: "Represents the OAuth 2.0 scopes (delegated permissions) that have been granted to an application (represented by a service principal) as part of the user or admin consent process."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: ""
---

# oAuth2PermissionGrant resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the OAuth 2.0 scopes (delegated permissions) that have been granted to an application (represented by a service principal) as part of the user or admin consent process.

## JSON representation

Here is a JSON representation of the resource

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
  "expiryTime": "String (timestamp)",
  "id": "string (identifier)",
  "principalId": "string",
  "resourceId": "string",
  "scope": "string",
  "startTime": "String (timestamp)"
}

```
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
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get oAuth2PermissionGrant](../api/oauth2permissiongrant-get.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) |Read properties and relationships of oAuth2PermissionGrant object.|
|[List oAuth2PermissionGrants](../api/oauth2permissiongrant-list.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) collection | Retrieve a list of oauth2PermissionGrant objects. |
|[Update oAuth2PermissionGrant](../api/oauth2permissiongrant-update.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md)	|Update oAuth2PermissionGrant object. |
|[Delete oAuth2PermissionGrant](../api/oauth2permissiongrant-delete.md) | None |Delete oAuth2PermissionGrant object. |

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
