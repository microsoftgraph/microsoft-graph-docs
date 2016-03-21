# Delete user

Delete user.
### Prerequisites
One of the following **scopes** is required to execute this API: 
*Directory.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/<id | userPrincipalName>
```

### Request headers
| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer <token>. Required.  |

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_user"
}-->
```http
DELETE https://graph.microsoft.com/beta/me
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
  "description": "Delete user",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->