# List tasks

Retrieve a list of task* objects.

*Note that filter is required for this method.

## Prerequisites
One of the following **permissions** is required to execute this API:
 
Group.Read.All, Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /tasks
```
## Required query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$filter|string| Only filtering based on the `createdBy` property is supported. |

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [task](../resources/task.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/tasks?$filter=createdBy eq 'me'
```
##### Response
Here is an example of the response. 
<!-- { "blockType": "ignored" } -->
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
