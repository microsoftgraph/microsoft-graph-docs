# Get plannerPlanDetails

Retrieve the properties and relationships of **plannerplandetails** object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.Read.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /planner/plans/<id>/details
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [plannerPlanDetails](../resources/plannerplandetails.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_plannerplandetails"
}-->
```http
GET https://graph.microsoft.com/beta/planner/plans/<id>/details
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlanDetails"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 197

{
  "sharedWith": {
  },
  "categoryDescriptions": {
    "category1": "1-value",
    "category2": "2-value",
    "category3": "3-value",
    "category4": "4-value",
    "category5": "5-value",
    "category6": "6-value"
  },
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get plannerPlanDetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->