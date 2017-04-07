# Update taskboardtaskformat

>**Important:** This API is deprecated and will be removed on May 26th, 2017. We recommend that you use [Update plannerAssignedToTaskBoardTaskFormat](plannerAssignedToTaskBoardTaskFormat_update.md), [Update plannerBucketTaskBoardTaskFormat](plannerBucketTaskBoardTaskFormat_update.md), and [Update plannerProgressTaskBoardTaskFormat](plannerProgressTaskBoardTaskFormat_update.md) APIs.

Update the properties of taskboardtaskformat object.
## Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /tasks/{id}/bucketTaskBoardFormat
PATCH /tasks/{id}/progressTaskBoardFormat
PATCH /tasks/{id}/assignedToTaskBoardFormat
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |
| If-Match | string | Value should be set to the ETag of the object |
| Prefer | string | Value should be set to "return=representation" so that the updated object is returned in the response. This is advised so that the client can get the new ETag value of the updated object without doing an additional GET |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|orderHint|String|Used to set the relative order of tasks in the vertical on the task board view. Consider three tasks in the order of: `'O'`, `'P'`, `'Q'`. To move `'P'` to the top of the vertical, set its `'orderHint'` to smaller than that of `'O'`. The comparison is an ordinal string comparison.|

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_taskboardtaskformat"
}-->
```http
PATCH https://graph.microsoft.com/beta/tasks/{id}/bucketTaskBoardFormat
Content-type: application/json
Content-length: 36
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"

{
  "orderHint": "orderHint-value"
}
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskboardtaskformat"
} -->
```http
HTTP/1.1 204 No Content
```
To get the updated object, use the `Prefer` header. See Request Headers above.
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update taskboardtaskformat",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->