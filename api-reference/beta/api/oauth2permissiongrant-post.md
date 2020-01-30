---
title: "Create oAuth2PermissionGrant"
description: "Creatte the properties of oAuth2PermissionGrant object."
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
author: ""
---

# Create oAuth2PermissionGrant

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Createte the properties of oAuth2PermissionGrant object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /oAuth2Permissiongrants/{id}
POST /users/{id | userPrincipalName}/oAuth2Permissiongrants/{id}
POST /drive/root/createdByUser/oAuth2Permissiongrants/{id}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [oAuth2PermissionGrant](oauth2permissiongrant.md) object.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|scope|String| Specifies the value of the scope claim that the resource application should expect in the OAuth 2.0 access token. |

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update oAuth2Permissiongrant",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
