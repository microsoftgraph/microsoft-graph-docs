# user: sendMail

Send the message specified in the request body on the fly. You can optionally save the message in the Sent Items folder.

In the same **sendMail** action call, you can:

- Include an [attachment](../resources/attachment.md)
- Use a [mention](../resources/mention.md) to call out another user in the new message

## Prerequisites
One of the following **scopes** is required to execute this API: *Mail.Send*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/sendMail
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|Message|[Message](../resources/message.md)|The message to send. Required.|
|SaveToSentItems|Boolean|Indicates whether to save the message in Sent Items. Optional. Default is true.|

If you want to use **mention** to call out another user in the new message:

- Include the required **toRecipients** property, the **mentions** property, and any writable message properties in the request body.
- For each mention in the **mentions** property, you must specify the **mentioned** and **createdBy** properties.


## Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

## Example
Here is an example of how to call this API.
##### Request 1
Here is an example of the request to create and send a message on the fly.
<!-- {
  "blockType": "request",
  "name": "user_sendmail"
}-->
```http
POST https://graph.microsoft.com/beta/me/sendMail
Content-type: application/json
Content-length: 1944

{
  "Message": {
    "subject": "subject-value",
    "body": {
      "contentType": "",
      "content": "content-value"
    },
    "toRecipients": [
      {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "#microsoft.graph.fileAttachment",
        "name": "menu.txt",
        "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
      }
    ]
  },
  "SaveToSentItems": true
}
```

##### Response 1
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```


##### Request 2
The next example includes a mention of another user Dana Swope in the draft.
<!-- {
  "blockType": "request",
  "name": "user_sendmail_with_mentions"
}-->
```http
POST https://graph.microsoft.com/beta/me/sendMail
Content-type: application/json
Content-length: 344

{
  "Message": {
    "subject": "Project kickoff",
    "toRecipients":[
      {
          "emailAddress":{
              "name":"Fanny Downs",
              "address":"fannyd@contoso.onmicrosoft.com"
          }
      }
    ],
    "mentions":[
      {
        "mentioned":{
          "name":"Dana Swope",
          "address":"danas@contoso.onmicrosoft.com"
         },
        "createdBy": {
            "name":"Randi Welch",
            "address":"randiw@contoso.onmicrosoft.com"
        }
      }
    ]
  }
}
```

##### Response 2
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
