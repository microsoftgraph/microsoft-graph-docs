---
title: "List workforceIntegrations"
description: "Get the list of workforceIntegration in a schedule."
author: "aaku"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# List shifts

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the list of [workforceIntegration](../resources/workforceIntegration.md) instances in a [schedule](../resources/schedule.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All, WorkforceIntegration.Read.All, WorkforceIntegration.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: This API supports admin permissions. 

## HTTP request

<!-- { "blockType": "ignored" } -->

```
GET https://graph.microsoft.com/beta/teamwork/workforceIntegrations
```

## Optional query parameters
There are no optional query parameters.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [workforceintegration](../resources/workforceintegration.md) objects in the response body.

## Example

#### Request

The following is an example of a request that gets all **workforceintegration** objects.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-workforceintegrations"
}-->

```http
GET https://graph.microsoft.com/beta/teamwork/workforceIntegrations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schedule-list-shifts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Javascript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schedule-list-shifts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/schedule-list-shifts-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workforceintegration",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
  "value": [
    {
      "id": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
      "displayName": "KronosWorkforceIntegration",
      "apiVersion": 1,
      "isActive": true,
      "encryption": {
        "protocol": "sharedSecret",
        "secret": null
      },
      "url": "https://kronosWorkforceIntegration.com/Contoso/",
      "supports": "shift"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the list of workforceintegrations associated with a team",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
