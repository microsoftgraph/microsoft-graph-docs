# Update plannertaskdetails

Update the properties of **plannertaskdetails** object.
### Prerequisites
The following **scopes** are required to execute this API: 

*Group.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /planner/tasks/<id>/details
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| If-Match  | Last known ETag value for the **plannerTaskDetails** to be updated. Required.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[plannerChecklistItems](../resources/plannerchecklistitems.md)|The collection of checklist items on the task.|
|description|String|Description of the task|
|previewType|string|This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[plannerExternalReferences](../resources/plannerexternalreferences.md)|The collection of references on the task.|

### Response
If successful, this method returns a `200 OK` response code and updated [plannerTaskDetails](../resources/plannertaskdetails.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_plannertaskdetails"
}-->
```http
PATCH https://graph.microsoft.com/beta/planner/tasks/<id>/details
Content-type: application/json
Content-length: 123
If-Match: W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="

{
  "description": "description-value",
  "previewType": "previewType-value",
  "references": {
    "http%3A//www%2Emicrosoft%2Ecom":{ // create new item
      "@odata.type": "microsoft.graph.plannerExternalReference",
      "alias": "String",
      "previewPriority": "String",
      "type": "String"
    },
    "http%3A//developer%2Emicrosoft%2Ecom":{ // update existing item
      "@odata.type": "microsoft.graph.plannerExternalReference",
      "previewPriority": "String",
    },
    "http%3A//www%2Ebing%2Ecom": null // remove existing item
  },
  "checklist": {
    "95e27074-6c4a-447a-aa24-9d718a0b86fa":{ // create new item
      "@odata.type": "microsoft.graph.plannerChecklistItem",
      "orderHint": "String",
      "title": "New item"
    },
    "f9dbaa2b-98c7-48f3-8ee0-bad8c9ab695e":{ // update existing item
      "@odata.type": "microsoft.graph.plannerChecklistItem",
      "isChecked": true,
    },
    "a93c93c5-10a6-4167-9551-8bafa09967a7": null // remove existing item
  }
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskDetails"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 143

{
  "description": "description-value",
  "previewType": "previewType-value",
  "references": {
  },
  "checklist": {
  },
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update plannertaskdetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->