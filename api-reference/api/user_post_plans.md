# Create plan

Use this API to create a new plan.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/plans
POST /users/<id>/plans
POST /drive/root/createdByUser/plans

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [plan](../resources/plan.md) object.


### Response
If successful, this method returns `201, Created` response code and [plan](../resources/plan.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_plan_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/plans
Content-type: application/json
Content-length: 88

{
  "createdBy": "createdBy-value",
  "owner": "owner-value",
  "title": "title-value"
}
```
In the request body, supply a JSON representation of [plan](../resources/plan.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plan"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 108

{
  "createdBy": "createdBy-value",
  "owner": "owner-value",
  "title": "title-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create plan",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->