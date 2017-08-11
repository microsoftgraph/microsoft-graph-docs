# List posts

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the posts of the specified thread. You can specify both the parent conversation and the thread, or, 
you can specify the thread without referencing the parent conversation.

## Prerequisites
One of the following **scopes** is required to execute this API:
*Group.ReadWrite.All; Group.Read.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/threads/{id}/posts
GET /groups/{id}/conversations/{id}/threads/{id}/posts

```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Post](../resources/post.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_posts"
}-->
```http
GET https://graph.microsoft.com/beta/groups/{id}/threads/{id}/posts
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.post",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 523

{
  "value": [
    {
      "body": {
        "contentType": "",
        "content": "content-value"
      },
      "receivedDateTime": "2016-10-19T10:37:00Z",
      "hasAttachments": true,
      "from": {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      },
      "sender": {
        "emailAddress": {
          "name": "name-value",
          "address": "address-value"
        }
      },
      "conversationThreadId": "conversationThreadId-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List posts",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
