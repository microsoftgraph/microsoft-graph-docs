---
title: "Delete shift"
description: "Deletes a shift from the schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Delete shift

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [shift](../resources/shift.md) from the schedule.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /teams/{teamId}/schedule/shifts/{shiftId}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "shift-delete"
}-->
```http
DELETE https://graph.microsoft.com/beta/teams/{teamId}/schedule/shifts/{shiftId}
```

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Deletes a shift from the schedule",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
