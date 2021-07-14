---
title: "serviceUpdateMessage: unfavorite"
description: "Remove the favorite status of serviceUpdateMessage for the signed in user."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: apiPageType
---

# serviceUpdateMessage: unfavorite
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the favorite status of [serviceUpdateMessages](../resources/serviceupdatemessage.md) for the signed in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ServiceMessageViewpoint.Write|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/serviceAnnouncement/messages/unfavorite
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|messageIds|String collection|List of message IDs to remove from favorite.|

## Response

If successful, this action returns a `200 OK` response code and a Boolean value `true` in the response body. Otherwise, will return `false` in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceupdatemessage_unfavorite"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages/unfavorite
Content-Type: application/json

{
  "messageIds": ["MC172851", "MC167983"]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceupdatemessage-unfavorite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceupdatemessage-unfavorite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/serviceupdatemessage-unfavorite-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceupdatemessage-unfavorite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```
