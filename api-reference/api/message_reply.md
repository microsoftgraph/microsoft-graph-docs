# message: reply


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/messages/<id>/reply
POST /users/<id>/messages/<id>/reply
POST /me/mailFolders/<id>/messages/<id>/reply

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|message|message||
|comment|string||

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_reply"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/messages/<id>/reply
Content-type: application/json
Content-length: 2920

{
  "message": {
    "receivedDateTime": "datetime-value",
    "sentDateTime": "datetime-value",
    "hasAttachments": true,
    "internetMessageId": "internetMessageId-value",
    "subject": "subject-value",
    "body": {
      "contentType": "contentType-value",
      "content": "content-value"
    },
    "bodyPreview": "bodyPreview-value",
    "importance": "importance-value",
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
    "conversationIndex": "conversationIndex-value",
    "uniqueBody": {
      "contentType": "contentType-value",
      "content": "content-value"
    },
    "isDeliveryReceiptRequested": true,
    "isReadReceiptRequested": true,
    "isRead": true,
    "isDraft": true,
    "webLink": "webLink-value",
    "inferenceClassification": "inferenceClassification-value",
    "unsubscribeData": [
      "unsubscribeData-value"
    ],
    "unsubscribeEnabled": true,
    "flag": {
      "completedDateTime": {
        "dateTime": "dateTime-value",
        "timeZone": "timeZone-value"
      },
      "dueDateTime": {
        "dateTime": "dateTime-value",
        "timeZone": "timeZone-value"
      },
      "startDateTime": {
        "dateTime": "dateTime-value",
        "timeZone": "timeZone-value"
      },
      "flagStatus": "flagStatus-value"
    },
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
        "size": 99,
        "isInline": true,
        "id": "id-value"
      }
    ],
    "singleValueExtendedProperties": [
      {
        "value": "value-value",
        "propertyId": "propertyId-value"
      }
    ],
    "multiValueExtendedProperties": [
      {
        "value": [
          "value-value"
        ],
        "propertyId": "propertyId-value"
      }
    ]
  },
  "comment": "comment-value"
}
```

##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.none"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: reply",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->