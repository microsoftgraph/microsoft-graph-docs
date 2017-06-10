# Create chat thread

Create a new chat thread in the specified channel by supplying the root messages.

## Prerequisites
The following **scopes** are required to execute this API:
*Group.ReadWrite.All*

> Currrently, only [delegated permissions](../../../concepts/permissions_reference.md) are supported for this operation.  Future releases will support application permissions. 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/channels/{id}/threads
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of a [chatThread](../resources/chatthread.md) object that contains the rootMessage property.

## Response
If successful, this method returns `204, No content` response code with an empty reponse body.

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
        "content": "Hello world"
      }
  }
}
```

> Currently, the contentType must be specified as an integer rather than a string: 0 for "text" or 1 for "html".  Future API releases will fix this.

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatThread"
} -->
```http
HTTP/1.1 204 Created
Content-type: application/json
Content-length: 0
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
