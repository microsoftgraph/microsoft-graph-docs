# Update plan

>**Important:** This API is deprecated and will be removed on May 26th, 2017. We recommend that you use [Update plannerPlan](plannerplan_update.md) API.

Update the properties of plan object.
## Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /plans/{id}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |
| If-Match | string | Value should be set to the ETag of the object |
| Prefer | string | Value should be set to "return=representation" so that the updated object is returned in the response. This is advised so that the client can get the new ETag value of the updated object without doing an additional GET |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|owner|String|Group `objectId` by which the plan is owned. Once set, this can only be updated by the owner. |
|title|String|Title of the plan. This is usually set the name of the group owning the plan.|

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_plan"
}-->
```http
PATCH https://graph.microsoft.com/beta/plans/{id}
Content-type: application/json
Content-length: 108
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"

{
  "owner": "owner-value",
  "title": "title-value"
}
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plan"
} -->
```http
HTTP/1.1 204 No Content
```
To get the updated object, use the `Prefer` header. See Request Headers above.
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update plan",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->