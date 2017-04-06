# Update plannerplandetails

Update the properties of **plannerplandetails** object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /planner/plans/<id>/details
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| If-Match  | Last known ETag value for the plannerPlanDetails to be updated. Required.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categoryDescriptions|[plannerCategoryDescriptions](../resources/plannercategorydescriptions.md)|An object that specifies the descriptions of the six categories that can be associated with tasks in the plan|
|sharedWith|[plannerUserIds](../resources/planneruserids.md)|Set of user ids that this plan is shared with. If you are leveraging Office 365 Groups, use the Groups API to manage group membership to share the [group's](../resources/group.md) plan. You can also add existing members of the group to this collection though it is not required for them to access the plan owned by the group.|

### Response
If successful, this method returns a `200 OK` response code and updated [plannerPlanDetails](../resources/plannerplandetails.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_plannerplandetails"
}-->
```http
PATCH https://graph.microsoft.com/beta/planner/plans/<id>/details
Content-type: application/json
Content-length: 177
If-Match: W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="

{
  "sharedWith": {
  },
  "categoryDescriptions": {
    "1": "1-value",
    "2": "2-value",
    "3": "3-value",
    "4": "4-value",
    "5": "5-value",
    "6": "6-value"
  }
}
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
    "1": "1-value",
    "2": "2-value",
    "3": "3-value",
    "4": "4-value",
    "5": "5-value",
    "6": "6-value"
  },
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update plannerplandetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->