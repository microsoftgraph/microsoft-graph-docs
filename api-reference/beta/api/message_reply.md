# message: reply

Reply to the sender of a message, add a comment or modify any updateable properties all in one **reply** call. 
The message is then saved in the Sent Items folder.

Alternatively, you can first [create a draft reply message](../api/message_createreply.md) to include a comment or update any message properties, 
and then [send](../api/message_send.md) the reply.

**Note**

- You can specify either a comment or the **body** property of the `message` parameter. Specifying both will return an HTTP 400 Bad Request error.
- If the **replyTo** property is specified in the original message, per Internet Message Format ([RFC 2822](http://www.rfc-editor.org/info/rfc2822)), 
you should send the reply to the recipients in **replyTo** and not the recipient in the **from** property. 


## Prerequisites
One of the following **permissions** is required to execute this API:
*Mail.Send*
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
| Authorization  | string  | Bearer <token>. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|A comment to include. Can be an empty string.|
|message|[message](../resources/message.md)|Any writeable properties to update in the reply message.|

## Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

## Example
The following example includes a comment and adds a recipient to the reply message.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_reply"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: application/json

{
  "message":{  
    "toRecipients":[
      {
        "emailAddress": {
          "address":"fannyd@contoso.onmicrosoft.com",
          "name":"Fanny Downs"
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
  "comment": "Fanny, Randi, would you name the group please?" 
}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
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
