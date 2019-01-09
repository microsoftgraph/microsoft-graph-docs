---
title: "Delete outlookTask"
description: "Delete the specified Outlook task in the user's mailbox."
---

# Delete outlookTask

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Delete the specified Outlook task in the user's mailbox.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Tasks.ReadWrite    |
|Delegated (personal Microsoft account) | Tasks.ReadWrite    |
|Application | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /me/outlook/tasks/{id}
DELETE /users/{id|userPrincipalName}/outlook/tasks/{id}
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_outlooktask"
}-->

```http
DELETE https://graph.microsoft.com/beta/me/outlook/tasks('AAMkADIyAAAhrb_QAAA=')
```

### Response

Here is an example of the response.
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
  "description": "Delete outlookTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->