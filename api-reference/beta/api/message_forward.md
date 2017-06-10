# message: forward

Forward a message, add a comment or modify any updateable properties  
all in one **forward** call. The message is saved in the Sent Items folder.

Alternatively, you can first [create a draft forward message](../api/message_createforward.md) to include a comment or update any message properties, 
and then [send](../api/message_send.md) the draft message.

**Note**

- You can specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- You must specify either the `toRecipients` parameter or the **toRecipients** property of the `message` parameter. Specifying both or specifying 
neither will return an HTTP 400 Bad Request error.

## Prerequisites
One of the following **scopes** is required to execute this API:
*Mail.Send*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/messages/{id}/forward
POST /users/{id | userPrincipalName}/messages/{id}/forward
POST /me/mailFolders/{id}/messages/{id}/forward
POST /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}/forward
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|toRecipients|[recipient](../resources/recipient.md) collection|The list of recipients.|
|message|[message](../resources/message.md)|Any writeable properties to update in the reply message.|

## Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

## Example
The following example sets the **isDeliveryReceiptRequested** property to true, adds a comment and forwards the message.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_forward"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAH5JaLAAA=/forward
Content-Type: application/json

{
  "message":{  
    "isDeliveryReceiptRequested": true,
    "toRecipients":[
      {
        "emailAddress": {
          "address":"danas@contoso.onmicrosoft.com",
          "name":"Dana Swope"
        }
      }
     ]
  },
  "comment": "Dana, just want to make sure you get this." 
}
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: forward",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
