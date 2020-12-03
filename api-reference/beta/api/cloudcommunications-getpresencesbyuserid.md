---
title: "cloudCommunications: getPresencesByUserId"
description: "Get the presence information for multiple users."
author: "ananmishr"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# cloudCommunications: getPresencesByUserId

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [presence](../resources/presence.md) information for multiple users.

## Permissions
One of the following permissions is required to call these APIs. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged)                  |
| :-------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | Presence.Read.All                         |
| Delegated (personal Microsoft account) | Not Supported.                         |
| Application                            | Not Supported.                                  |

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/getPresencesByUserId
```

## Request Headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |
|Content-type | application/json. Required. |


## Request body

In the request body, provide a JSON object with the following parameter.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|ids|String collection|The user object IDs.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [presence](../resources/presence.md) objects in the response body.


## Examples

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-presence-multiple-users"
}-->

```http
POST https://graph.microsoft.com/beta/communications/getPresencesByUserId
Content-Type: application/json

{
	"ids": ["fa8bf3dc-eca7-46b7-bad1-db199b62afc3", "66825e03-7ef5-42da-9069-724602c31f6b"]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-presence-multiple-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-presence-multiple-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-presence-multiple-users-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-presence-multiple-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

> **Note:** The response objects might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get-presence-multiple-users",
  "truncated": "true",
  "@odata.type": "microsoft.graph.presence"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1574
```
```json
{
	"value": [{
			"id": "fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
			"availability": "Busy",
			"activity": "InAMeeting"
		},
		{
			"id": "66825e03-7ef5-42da-9069-724602c31f6b",
			"availability": "Away",
			"activity": "Away"
		}
	]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List Presence Information",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


