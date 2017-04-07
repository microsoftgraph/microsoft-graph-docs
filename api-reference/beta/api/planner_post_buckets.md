# Create plannerBucket

Use this API to create a new **plannerBucket**.

### Prerequisites
The following **scopes** are required to execute this API: 

*Group.ReadWrite.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /planner/buckets

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|

### Request body
In the request body, supply a JSON representation of [plannerBucket](../resources/plannerbucket.md) object.

### Response
If successful, this method returns `201, Created` response code and [plannerBucket](../resources/plannerbucket.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_plannerbucket_from_planner"
}-->
```http
POST https://graph.microsoft.com/beta/planner/buckets
Content-type: application/json
Content-length: 88

{
  "name": "name-value",
  "planId": "planId-value",
  "orderHint": "orderHint-value"
}
```
In the request body, supply a JSON representation of [plannerBucket](../resources/plannerbucket.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerBucket"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 108

{
  "name": "name-value",
  "planId": "planId-value",
  "orderHint": "orderHint-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create plannerBucket",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->