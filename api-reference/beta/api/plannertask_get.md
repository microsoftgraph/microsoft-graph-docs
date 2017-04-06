# Get plannerTask

Retrieve the properties and relationships of **plannertask** object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.Read.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /planner/tasks/<id>
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [plannerTask](../resources/plannertask.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_plannertask"
}-->
```http
GET https://graph.microsoft.com/beta/planner/tasks/<id>
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
  "description": "Get plannerTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->