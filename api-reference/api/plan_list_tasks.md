# List tasks

Retrieve a list of task objects.
### Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.Read.All, Group.ReadWrite.All

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /plans/<id>/tasks
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$expand|string|Only the relationships of [taskBoardTaskFormat](../resources/taskboardtaskformat.md) type are supported. |

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [task](../resources/task.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_tasks"
}-->
```http
GET https://graph.microsoft.com/beta/plans/<id>/tasks
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.task",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 772

{
  "value": [
    {
      "createdBy": "createdBy-value",
      "assignedTo": "assignedTo-value",
      "planId": "planId-value",
      "bucketId": "bucketId-value",
      "title": "title-value",
      "orderHint": "orderHint-value",
      "assigneePriority": "assigneePriority-value",
      "percentComplete": 99,
      "startDateTime": "datetime-value",
      "assignedDateTime": "datetime-value",
      "createdDateTime": "datetime-value",
      "assignedBy": "assignedBy-value",
      "dueDateTime": "datetime-value",
      "hasDescription": true,
      "previewType": "previewType-value",
      "completedDateTime": "datetime-value",
      "appliedCategories": {
      },
      "conversationThreadId": "conversationThreadId-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List tasks",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->