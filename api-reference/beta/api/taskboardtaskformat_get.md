# Get taskBoardTaskFormat

Retrieve the properties and relationships of taskboardtaskformat object.
## Prerequisites
One of the following **permissions** is required to execute this API:
 
Group.Read.All, Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /tasks/{id}/bucketTaskBoardFormat
GET /tasks/{id}/progressTaskBoardFormat
GET /tasks/{id}/assignedToTaskBoardFormat
```
## Optional query parameters
None

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [taskBoardTaskFormat](../resources/taskboardtaskformat.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_taskboardtaskformat"
}-->
```http
GET https://graph.microsoft.com/beta/tasks/{id}/bucketTaskBoardFormat
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskboardtaskformat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 80

{
  "type": "type-value",
  "orderHint": "orderHint-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get taskBoardTaskFormat",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->