# Create Conversation

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new conversation by including a thread and a post. 

Use [reply thread](conversationthread_reply.md) or [reply post](post_reply.md) to further post to that conversation.
## Prerequisites
One of the following **scopes** is required to execute this API: *Group.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/conversations
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of [conversation](../resources/conversation.md) object containing a [conversationThread](../resources/conversationThread.md) and a [post](../resources/post.md).

## Response

If successful, this method returns `201, Created` response code and [conversation](../resources/conversation.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_conversation_from_group"
}-->
```http
POST https://graph.microsoft.com/beta/groups/{id}/conversations
Content-type: application/json

{
  "topic": "New Conversation Topic",
  "threads": [{
    "posts": [{
      "body": {
        "contentType": "html",
        "content": "this is body content"
      },
      "newParticipants": [{
        "emailAddress": {
          "name": "Alex Darrow",
          "address": "alexd@contoso.com"
        }
      }]
    }]
  }]
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversation"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
  "topic": "topic-value",
  "hasAttachments": true,
  "lastDeliveredDateTime": "2016-10-19T10:37:00Z",
  "uniqueSenders": [
    "uniqueSenders-value"
  ],
  "preview": "preview-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Conversation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->