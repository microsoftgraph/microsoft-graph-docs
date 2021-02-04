---
title: "Get chatMessageHostedContent"
description: "Retrieve the properties and relationships of chatMessageHostedContent object."
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# Get chatMessageHostedContent

Namespace: microsoft.graph

Retrieve the properties and relationships of [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
|Delegated (work or school account)| For **channel** resource: ChannelMessage.Read.All, Group.Read.All, Group.Read.WriteAll |
|Delegated (personal Microsoft account)|Not supported.|
|Application| For **channel** resource: ChannelMessage.Read.Group*, ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All |

> **Note**: Permissions marked with * use [resource-specific consent]( https://aka.ms/teams-rsc).

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{id}/channels/{id}/messages/{id}/hostedContents/{id}
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) object in the response body.

## Examples

### Example 1: Get hosted content

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_chatmessagehostedcontent"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams/{id}/channels/{id}/messages/{id}/hostedContents/{id}
```

#### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessageHostedContent"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value"
}
```

### Example 2: Get hosted content bytes for an image

#### Request


<!-- {
  "blockType": "request",
  "name": "get_chatmessagehostedcontent"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams/{id}/channels/{id}/messages/{id}/hostedContents/{id}
```


#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessageHostedContent"
} -->

```http
HTTP/1.1 200 OK
Content-type: image/jpeg
Content-length: 201
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get chatMessageHostedContent",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


