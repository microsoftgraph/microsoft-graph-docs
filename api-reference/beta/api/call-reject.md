---
title: "call: reject"
description: "Enable a bot to reject an incoming [call](../resources/call.md)."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# call: reject

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable a bot to reject an incoming [call](../resources/call.md). The incoming call request can be an invite to a meeting or a peer to peer call. For a meeting invite, the notification contains the `chatInfo` and `meetingInfo` parameters.

When the bot is registered with a valid callback URL in the Azure portal, the incoming call is delivered as a [commsNotification](../resources/commsnotification.md) with `changeType` set to `created`. The bot is expected to `Answer` or `Reject` the call before it times out.

> [!NOTE]
> Bots can only be reached by VOIP. PSTN calling to bots is not yet supported.

This API is only used to reject incoming calls. To end existing calls, use [Delete call](../api/call-delete.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged)                |
| :-------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Not Supported                       |
| Delegated (personal Microsoft account) | Not Supported                       |
| Application     | None                                                       |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/reject
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|reason|String|The rejection reason. Possible values are `None`, `Busy` and `Forbidden`. |

## Response
If successful, this method returns a `202 Accepted` response code. It does not return anything in the response body.

## Examples
The following examples show how to call this API.

#### Request
The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "call-reject"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/57dab8b1-894c-409a-b240-bd8beae78896/reject
Content-Type: application/json
Content-Length: 24

{
  "reason": "busy"
}
```
# [C#](#tab/csharp)	
[!INCLUDE [sample-code](../includes/snippets/csharp/call-reject-csharp-snippets.md)]	
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

# [Javascript](#tab/javascript)	
[!INCLUDE [sample-code](../includes/snippets/javascript/call-reject-javascript-snippets.md)]	
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

# [Objective-C](#tab/objc)	
[!INCLUDE [sample-code](../includes/snippets/objc/call-reject-objc-snippets.md)]	
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

---	


##### Response
Here is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 202 Accepted
```

### Reject an incoming call with 'None' reason

##### Notification - incoming

```http
POST https://bot.contoso.com/api/call
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "created",
      "resource": "/app/calls/57dab8b1-894c-409a-b240-bd8beae78896",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/app/calls/57dab8b1-894c-409a-b240-bd8beae78896",
        "state": "incoming",
        "direction": "incoming",
        "source": {
          "identity": {
            "user": {
              "displayName": "John",
              "id": "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
            }
          },
          "region": "westus",
          "languageId": "en-US"
        },
        "targets": [
          {
            "identity": {
              "application": {
                "displayName": "Calling Bot",
                "id": "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
              }
            },
            "region": "westus",
            "languageId": "en-US"
          }
        ],
        "requestedModalities": [ "audio", "video" ]
      }
    }
  ]
}
```

##### Request
The following example shows the request.

<!-- {
  "blockType": "ignored",
  "name": "call-reject"
}-->
```http
POST https://graph.microsoft.com/beta/app/calls/57dab8b1-894c-409a-b240-bd8beae78896/reject
Content-Type: application/json
Content-Length: 24

{
  "reason": "none"
}
```

##### Response

```http
HTTP/1.1 202 Accepted
```

##### Notification - deleted

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resource": "/app/calls/57dab8b1-894c-409a-b240-bd8beae78896",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/app/calls/57dab8b1-894c-409a-b240-bd8beae78896"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: reject",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
