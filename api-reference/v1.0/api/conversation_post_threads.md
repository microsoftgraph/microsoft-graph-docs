# Create thread

Create a new thread in the specified conversation. 

A thread and post are created as specified. Use [reply thread](conversationthread_reply.md) to further post 
to that thread. Or, if you get the post ID, you can also [reply](post_reply.md) to that post in that thread.

Note: You can also [start a new conversation by first creating a thread](group_post_threads.md).

## Prerequisites
The following **scopes** are required to execute this API:
*Group.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/conversations/{id}/threads
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [ConversationThread](../resources/conversationthread.md) object.

## Response

If successful, this method returns `201, Created` response code and [ConversationThread](../resources/conversationthread.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_conversationthread_from_conversation"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/{id}/conversations/{id}/threads
Content-type: application/json

{
  "topic": "topic-value",
  "posts": [{
      "body": {
        "contentType": "html",
        "content": "this is body content"
      }
  }]
}
```
In the request body, supply a JSON representation of [conversationThread](../resources/conversationthread.md) object.
##### Response

If successful, this method returns `201, Created` response code and the `id` of the new thread in the response body.
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationThread"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 346

{
  "id": "thread-id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create thread",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
