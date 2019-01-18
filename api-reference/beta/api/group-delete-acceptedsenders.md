---
title: "Remove acceptedSender"
description: "Remove a user or group from the acceptedSenders list. "
author: "dkershaw10"
localization_priority: Normal
ms.prod: "groups"
---

# Remove acceptedSender

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Remove a user or group from the acceptedSenders list. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)  |
|:---------------------------------------|:-------------------------------------------- |
| Delegated (work or school account)     | Group.ReadWrite.All    |
| Delegated (personal Microsoft account) | Not supported.|
| Application                            | Not supported.|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /groups/{id}/acceptedSenders/$ref?$id=<id>
```

## Request headers
| Header         | Value                      |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example
#### Request
The following are a couple of examples of the request.

<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_group"
}-->
```http
DELETE https://graph.microsoft.com/beta/groups/{id}/acceptedSenders/$ref?$id=https://graph.microsoft.com/beta/users/{id}

DELETE https://graph.microsoft.com/beta/groups/{id}/acceptedSenders/$ref?$id=https://graph.microsoft.com/beta/groups/{id}
```

#### Response
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
  "description": "Create acceptedSender",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
