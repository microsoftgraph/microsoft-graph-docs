---
title: "Uninstall app for user"
description: "Uninstall an app from the personal scope of the specified user."
author: "clearab"
doc_type: "apiPageType"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Uninstall app for user

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Uninstall an [app](../resources/teamsappinstallation.md) from the personal scope of the specified [user](../resources/user.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |User.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.ReadWrite.All, Directory.ReadWrite.All  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id}/teamwork/installedApps/{id}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "user_delete_teamsApp"
}-->
```http
DELETE https://graph.microsoft.com/beta/users/{id}/teamwork/installedApps/{id}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "User delete teamsAppInstallations,
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
