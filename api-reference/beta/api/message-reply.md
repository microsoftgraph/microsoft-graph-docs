---
title: "message: reply"
description: "Reply to the sender of a message using either JSON or MIME format."
localization_priority: Normal
author: "abheek-das"
ms.prod: "outlook"
doc_type: apiPageType
---

# message: reply

Namespace: microsoft.graph.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reply to the sender of a [message](../resources/message.md) using either JSON or MIME format.

When using JSON format:
- Specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the original message specifies a recipient in the **replyTo** property, per Internet Message Format ([RFC 2822](https://www.rfc-editor.org/info/rfc2822)), send the reply to the recipients in **replyTo** and not the recipient in the **from** property.

When using MIME format:
- Provide the applicable [Internet message headers](https://tools.ietf.org/html/rfc2076) and the [MIME content](https://tools.ietf.org/html/rfc2045), all encoded in **base64** format in the request body.
- Add any attachments and S/MIME properties to the MIME content.

This method saves the message in the **Sent Items** folder.

Alternatively, [create a draft to reply to a message](../api/message-createreply.md), and [send](../api/message-send.md) it later.

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
POST /me/messages/{id}/reply
POST /users/{id | userPrincipalName}/messages/{id}/reply
POST /me/mailFolders/{id}/messages/{id}/reply
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/reply
```

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required |
| Content-Type | string  | Nature of the data in the body of an entity. Required <br/> Use `application/json` for a JSON object and `text/plain` for MIME content |

## Request body
When using JSON format, include a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md) | Any writeable properties to update in the reply message.|

When specifying the body in MIME format, provide the MIME content with the applicable Internet message headers, all encoded in **base64** format in the request body. This method uses the sender of the original message as recipient.

## Response

If successful, this method returns `202 Accepted` response code. It does not return anything in the response body.

If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: "Invalid base64 string for MIME content".

## Examples
### Example 1: Reply to a message in JSON format
The following example includes a comment and adds a recipient to the reply message.
##### Request
Here is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "message_reply_beta",
  "sampleKeys": ["AAMkADA1MTAAAAqldOAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: application/json

{
  "message":{  
    "toRecipients":[
      {
        "emailAddress": {
          "address":"samanthab@contoso.onmicrosoft.com",
          "name":"Samantha Booth"
        }
      },
      {
        "emailAddress":{
          "address":"randiw@contoso.onmicrosoft.com",
          "name":"Randi Welch"
        }
      }
     ]
  },
  "comment": "Samantha, Randi, would you name the group please?" 
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-reply-beta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-reply-beta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/message-reply-beta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-reply-beta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

### Example 2: Reply to a message in MIME format
##### Request

<!-- {
  "blockType": "ignored",
  "name": "message_reply_mime_beta"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: text/plain

UmVjZWl2ZWQ6IGZyb20gY29udG9zby5jb20gKDEwLjE5NC4yNDEuMTk3KSBieSAKY29udG9zby5jb20gKDEwLjE5NC4yNDEuMTk3KSB3aXRoIE1pY3Jvc29mdCAKU01UUCBTZXJ2ZXIgKHZlcnNpb249VExTMV8yLCAKY2lwaGVyPVRMU19FQ0RIRV9SU0FfV0lUSF9BRVNfMjU2X0NCQ19TSEEzODRfUDI1NikgaW

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
<!--
{
  "type": "#page.annotation",
  "description": "message: reply",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
