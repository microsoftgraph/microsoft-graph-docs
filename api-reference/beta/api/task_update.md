# Update task

Update the properties of task object.
## Prerequisites
One of the following **permissions** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /tasks/{id}

```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)"|
| If-Match | string | Value should be set to the ETag of the object |
| Prefer | string | Value should be set to "return=representation" so that the updated object is returned in the response. This is advised so that the client can get the new ETag value of the updated object without doing an additional GET |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliedCategories|[appliedCategoriesCollection](../resources/appliedcategoriescollection.md)|The categories to which the task has been applied. See appliedCategoriesCollection for possible values. |
|assignedTo|String|User id to which the task is assigned.|
|assigneePriority|String|Used to set the relative priority order of tasks assigned to the user in a list view. Consider three tasks in the priority order of: `'A'`, `'B'`, `'C'`. To move `'B'` to the top, set its `assignneePriority` to smaller than that of `'A'`. The comparison is an ordinal string comparison.|
|bucketId|String|Bucket id to which the task belongs. The bucket needs to be in the plan that the task is in.|
|conversationThreadId|String|Thread id of the conversation on the task. This is the id of the conversation thread object created in the group.|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|orderHint|String|Used to set the relative order of tasks in a list view. Consider three tasks in the order of: `'X'`, `'Y'`, `'Z'`. To move `'Y'` to the top, set its `orderHint` to smaller than that of `'X'`. The comparison is an ordinal string comparison.|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed.|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|title|String|Title of the task.|

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_task"
}-->
```http
PATCH https://graph.microsoft.com/beta/tasks/{id}
Content-type: application/json
Content-length: 663
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"

{
  "assignedTo": "assignedTo-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value",
  "percentComplete": 99,
  "startDateTime": "2016-10-19T10:37:00Z",
  "dueDateTime": "2016-10-19T10:37:00Z",
  "previewType": "previewType-value",
  "appliedCategories": {
  },
  "conversationThreadId": "conversationThreadId-value",
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.task"
} -->
```http
HTTP/1.1 204 No Content
```
To get the updated object, use the `Prefer` header. See Request Headers above.
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update task",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->