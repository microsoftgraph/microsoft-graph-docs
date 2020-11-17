---
title: "user: revokeSignInSessions"
description: "Invalidates all the user's refresh tokens issued to applications (as well as session cookies in a user's browser), by resetting the **signInSessionsValidFromDateTime** user property to the current date-time."
localization_priority: Normal
author: "krbain"
ms.prod: "users"
doc_type: apiPageType
---

# user: revokeSignInSessions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Invalidates all the refresh tokens issued to applications for a user (as well as session cookies in a user's browser), by resetting the **signInSessionsValidFromDateTime** user property to the current date-time. Typically, this operation is performed (by the user or an administrator) if the user has a lost or stolen device. This operation prevents access to the organization's data through applications on the device by requiring the user to sign in again to all applications that they have previously consented to, independent of device.

If the application attempts to redeem a delegated access token for this user by using an invalidated refresh token, the application will get an error. If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint, which will force the user to sign in.

>[!NOTE]
>After calling **revokeSignInSessions**, there might be a small delay of a few minutes before tokens are revoked.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | User.ReadWrite, Directory.ReadWrite.All, Directory.AccessAsUser.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Directory.ReadWrite.All, Directory.AccessAsUser.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/revokeSignInSessions
POST /users/{id | userPrincipalName}/revokeSignInSessions
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
This operation has no request content.

## Response

If successful, this method returns a `204 No Content` response code.

>[!NOTE]
>This API has a [known issue](/graph/known-issues#revoke-sign-in-sessions-returns-wrong-HTTP-code). It returns a different HTTP response code.

## Example
The following example shows how to call this API.

##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_revokesigninsessionss"
}-->
```http
POST https://graph.microsoft.com/beta/me/revokeSignInSessions
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-revokesigninsessionss-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-revokesigninsessionss-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-revokesigninsessionss-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-revokesigninsessionss-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "user: revokeSignInSessions",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


