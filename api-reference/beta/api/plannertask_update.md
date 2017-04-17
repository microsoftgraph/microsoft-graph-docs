# Update plannertask

Update the properties of **plannertask** object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /planner/tasks/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| If-Match  | Last known ETag value for the **plannerTask** to be updated. Required.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|The categories to which the task has been applied. See [applied Categories](../resources/plannerappliedcategories.md) for possible values.|
|assigneePriority|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](../resources/planner_order_hint_format.md).|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|The set of users the task is assigned to.|
|bucketId|String|Bucket id to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case sensitive. [Format validation](../resources/tasks_identifiers_disclaimer.md) is done on the service. |
|conversationThreadId|String|Thread id of the conversation on the task. This is the id of the conversation thread object created in the group.|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|orderHint|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](../resources/planner_order_hint_format.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. |
|planId|String|Plan id to which the task belongs.|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|title|String|Title of the task.|

### Response
If successful, this method returns a `200 OK` response code and updated [plannerTask](../resources/plannertask.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_plannertask"
}-->
```http
PATCH https://graph.microsoft.com/beta/planner/tasks/<id>
Content-type: application/json
Content-length: 458
If-Match: W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="

{
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 458

{
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update plannertask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->