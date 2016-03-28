# Delete task

Delete task.
### Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /tasks/<id>


```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)"|
| If-Match | string | Value should be set to the ETag of the object |

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_task"
}-->
```http
DELETE https://graph.microsoft.com/beta/tasks/<id>
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"
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
  "description": "Delete task",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->