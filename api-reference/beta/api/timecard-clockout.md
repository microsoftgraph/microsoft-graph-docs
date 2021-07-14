---
title: "timeCard: clockOut"
description: "Clock Out to end an open timecard."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# timeCard: clockOut

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Clock out to end an open [timeCard](../resources/timeCard.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.ReadWrite.All* |

>\* **Important:** When you use application permissions, you must include the `MS-APP-ACTS-AS` header in the request.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timecards/{timeCardID}/clockOut
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-type | application/json. Required.|
| MS-APP-ACTS-AS | The ID of the user on behalf of whom the app is acting. Required when you use the application permission scope. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|atApprovedLocation| `Edm.boolean ` | Indicate if this action happens at an approved location.|
|notes| [itemBody](../resources/itembody.md)  |Notes for the clock out. |

## Response

If successful, this method returns a `204 No Content` response code.


## Example

### Request
The following is an example of the request. 


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timecard-clockout"
}-->

```http
POST https://graph.microsoft.com/beta/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/TCK_cc09588d-d9d2-4fa0-85dc-2aa5ef983972/clockout
Content-type: application/json

{
    "atAprovedLocation": true,
    "notes": {
        "contentType": "text",
        "content": "clock out smaple notes"
    }
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timecard-clockout-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/timecard-clockout-objc-snippets.md)]
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Clock Out",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
