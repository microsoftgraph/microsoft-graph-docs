# user: sendMail

### Prerequisites
One of the following **scopes** is required to execute this API: *Mail.Send*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/microsoft.graph.sendMail
```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|Message|[Message](../resources/message.md)|The message to send.|
|SaveToSentItems|Boolean|Indicates whether to save the message in Sent Items. Default is true.|

### Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "user_sendmail"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/microsoft.graph.sendMail
Content-type: application/json
Content-length: 1944

{
  "Message": {
    "receivedDateTime": "datetime-value",
    "sentDateTime": "datetime-value",
    "hasAttachments": true,
    "subject": "subject-value",
    "body": {
      "contentType": {
      },
      "content": "content-value"
    },
    "bodyPreview": "bodyPreview-value",
    "importance": {
    },
    "parentFolderId": "parentFolderId-value",
    "sender": {
      "emailAddress": {
        "name": "name-value",
        "address": "address-value"
      }
    },
    "from": {
      "emailAddress": {
        "name": "name-value",
        "address": "address-value"
      }
    },
    "toRecipients": [
      {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      }
    ],
    "ccRecipients": [
      {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      }
    ],
    "bccRecipients": [
      {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      }
    ],
    "replyTo": [
      {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      }
    ],
    "conversationId": "conversationId-value",
    "uniqueBody": {
      "contentType": {
      },
      "content": "content-value"
    },
    "isDeliveryReceiptRequested": true,
    "isReadReceiptRequested": true,
    "isRead": true,
    "isDraft": true,
    "webLink": "webLink-value",
    "createdDateTime": "datetime-value",
    "lastModifiedDateTime": "datetime-value",
    "changeKey": "changeKey-value",
    "categories": [
      "categories-value"
    ],
    "id": "id-value",
    "attachments": [
      {
        "lastModifiedDateTime": "datetime-value",
        "name": "name-value",
        "contentType": "contentType-value",
        "contentBytes": "contentBytes-value",
        "size": 99,
        "isInline": true,
        "id": "id-value"
      }
    ]
  },
  "SaveToSentItems": true
}
```

##### Response
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: sendMail",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
