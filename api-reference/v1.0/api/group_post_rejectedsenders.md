# Create rejectedSender

Add a new user or group to the rejectedSender list.

Specify the user or group in `@odata.id` in the request body. Users in the rejected senders list cannot 
post to conversations of the group (identified in the POST request URL). Make sure you do not specify the same 
user or group in the rejected senders and accepted senders lists, otherwise you will get an error.
## Prerequisites
One of the following **scopes** is required to execute this API: *Group.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/rejectedSenders/$ref
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
In the request body, supply the id of a user or group object.

## Response

This method returns `204, No Content` response code and no response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_group"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/{id}/rejectedSenders/$ref
Content-type: application/json
Content-length: 30

{
  "@odata.id":"https://graph.microsoft.com/v1.0/users/alexd@contoso.com"
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create rejectedSender",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
