# List buckets

Retrieve a list of **plannerbucket** objects contained by a [plannerPlan](../resources/plannerplan.md) object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.Read.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /planner/plans/<id>/buckets
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [plannerBucket](../resources/plannerbucket.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_buckets"
}-->
```http
GET https://graph.microsoft.com/beta/planner/plans/<id>/buckets
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerBucket",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 153

{
  "value": [
    {
      "name": "name-value",
      "planId": "planId-value",
      "orderHint": "orderHint-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List buckets",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->