---
title: "Delete calendarPermission"
description: "Delete calendarPermission."
localization_priority: Normal
author: "sochowdh"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Delete calendarPermission

Namespace: microsoft.graph

Delete calendarPermission.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Calendars.ReadWrite    |
|Delegated (personal Microsoft account) | Calendars.ReadWrite    |
|Application | Calendars.ReadWrite |
## HTTP request

Delete the specified permissions of a user's primary calendar:
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id}/calendar/calendarPermissions/{id}
```

Delete the specified permissions of a group calendar:
<!-- { "blockType": "ignored" } -->
```http
DELETE /groups/{id}/calendar/calendarPermissions/{id}
```

Delete the specified permissions of the user calendar that contains the identified event:
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id}/events/{id}/calendar/calendarPermissions/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_calendarpermission"
}-->

```http
DELETE https://graph.microsoft.com/beta/users/{id}/calendar/calendarPermissions/{id}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-calendarpermission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-calendarpermission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-calendarpermission-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-calendarpermission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete calendarPermission",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


