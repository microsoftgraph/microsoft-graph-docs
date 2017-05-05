# Create thread

Create a new thread in the specified channel by supplying the root messages.

## Prerequisites
The following **scopes** are required to execute this API:
*Group.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/channels/{id}/threads
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, supply a JSON representation of [chatThread](../resources/chatthread.md) object.

## Response
If successful, this method returns `201, Created` response code and [chatThread](../resources/chatthread.md) object in the response body.  ???RT

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chatthread_from_channel"
}-->
```http
POST https://graph.microsoft.com/beta/groups/{id}/channels/{id}/chatthreads
Content-type: application/json

{
  "rootMessage": {
      "body": {
        "contentType": 2,
        "content": "this is body content"
      }
  }
}
```
In the request body, supply a JSON representation of [chatThread](../resources/chatthread.md) object.

> Currently, the contentType must be specified as an integer: 1 for "text" or 2 for "html".  Future API releases will fix this.

##### Response

If successful, this method returns `201, Created` response code and the `id` of the new thread in the response body.   ??RT
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatThread"
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
