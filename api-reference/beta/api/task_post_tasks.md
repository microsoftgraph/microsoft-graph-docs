# Create task

>**Important:** This API is deprecated and will be removed on May 26th, 2017. We recommend that you use [Create plannerTask](planner_post_tasks.md) API.

Use this API to create a new task.
## Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /tasks

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)"|

## Request body
In the request body, supply a JSON representation of [task](../resources/task.md) object.


## Response
If successful, this method returns `201, Created` response code and [task](../resources/task.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_task_from_tasks"
}-->
```http
POST https://graph.microsoft.com/beta/tasks
Content-type: application/json
Content-length: 192

{
  "assignedTo": "assignedTo-value",
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value"
}
```
In the request body, supply a JSON representation of [task](../resources/task.md) object.
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.task"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 663

{
  "@odata.etag": "W/\"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn\"",
  "createdBy": "createdBy-value",
  "assignedTo": "assignedTo-value",
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value",
  "percentComplete": 99,
  "startDateTime": "2016-10-19T10:37:00Z",
  "assignedDateTime": "2016-10-19T10:37:00Z",
  "createdDateTime": "2016-10-19T10:37:00Z",
  "assignedBy": "assignedBy-value",
  "dueDateTime": "2016-10-19T10:37:00Z",
  "hasDescription": true,
  "previewType": "previewType-value",
  "completedDateTime": "2016-10-19T10:37:00Z",
  "appliedCategories": {
  },
  "conversationThreadId": "conversationThreadId-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create task",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
