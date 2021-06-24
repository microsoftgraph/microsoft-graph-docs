---
title: "message: replyAll"
description: "Reply to all recipients of a message using either JSON or MIME format."
author: "abheek-das"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# message: replyAll

Namespace: microsoft.graph

Reply to all recipients of a [message](../resources/message.md) using either JSON or MIME format.

When using JSON format:
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the original message specifies a recipient in the **replyTo** property, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), send the reply to the recipients in **replyTo** and not the recipient in the **from** property.

When using MIME format:
- Provide the applicable [Internet message headers](https://tools.ietf.org/html/rfc2076) and the [MIME content](https://tools.ietf.org/html/rfc2045), all encoded in **base64** format in the request body.
- Add any attachments and S/MIME properties to the MIME content.

This method saves the message in the **Sent Items** folder.

Alternatively, [create a draft to reply-all to a message](../api/message-createreplyall.md) and [send](../api/message-send.md) it later.

## Permissions
One of the following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Send    |
|Delegated (personal Microsoft account) | Mail.Send    |
|Application | Mail.Send |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/me/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/messages/{id}/replyAll
POST /me/mailFolders/{id}/messages/{id}/replyAll
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/replyAll
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Type | string  | Nature of the data in the body of an entity. Required. <br/> Use `application/json` for a JSON object and `text/plain` for MIME content. |

## Request body
When using JSON format, provide a JSON object in the request body with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|

When specifying the body in MIME format, provide the MIME content with the applicable Internet message headers, all encoded in **base64** format in the request body. This method loads the sender and all recipients of the original message as recipients of the new message.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: "Invalid base64 string for MIME content".

## Examples
### Example 1: Reply-all in JSON format to a message
Here is an example of how to call this API.
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_replyall"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/messages/{id}/replyAll
Content-type: application/json
Content-length: 32

{
  "comment": "comment-value"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-replyall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-replyall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-replyall-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-replyall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```
### Example 2: Reply-all in MIME format to a message
##### Request

<!-- {
  "blockType": "ignored",
  "name": "message_replyAll_mime_v1"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/replyAll
Content-type: text/plain

Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

If the request body includes malformed MIME content, this method returns the following error message.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "ErrorMimeContentInvalidBase64String",
        "message": "Invalid base64 string for MIME content."
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: replyAll",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

