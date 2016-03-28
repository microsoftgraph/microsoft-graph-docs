# Create plan

Use this API to create a new plan. 

Note that you need to have created a group and be a member of it before you can make the group an owner of the plan. Read the [overview](../resources/tasks_overview.md) to understand the relationship between group, plan and task.


### Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /plans

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

### Request body
In the request body, supply a JSON representation of [plan](../resources/plan.md) object.


### Response
If successful, this method returns `201, Created` response code and [plan](../resources/plan.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_plan_from_plans"
}-->
```http
POST https://graph.microsoft.com/beta/plans
Content-type: application/json
Content-length: 88

{
  "owner": "owner-value",
  "title": "title-value"
}
```
In the request body, supply a JSON representation of [plan](../resources/plan.md) object.
##### Response
Here is an example of the response.
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