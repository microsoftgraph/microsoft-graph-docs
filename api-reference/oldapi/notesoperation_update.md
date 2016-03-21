# Update notesoperation

Update the properties of notesoperation object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/notes/operations/<id>
PATCH /users/<id>/notes/operations/<id>
PATCH /groups/<id>/notes/operations/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|dateTimeOffset||
|error|notesOperationError||
|lastActionDateTime|dateTimeOffset||
|resourceId|string||
|resourceLocation|string||
|status|string||

### Response
If successful, this method returns a `200 OK` response code and updated [notesOperation](../resources/notesoperation.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_notesoperation"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/notes/operations/<id>
Content-type: application/json
Content-length: 195

{
  "status": "status-value",
  "createdDateTime": "datetime-value",
  "lastActionDateTime": "datetime-value",
  "resourceLocation": "resourceLocation-value",
  "resourceId": "resourceId-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notesoperation"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 215

{
  "id": "id-value",
  "status": "status-value",
  "createdDateTime": "datetime-value",
  "lastActionDateTime": "datetime-value",
  "resourceLocation": "resourceLocation-value",
  "resourceId": "resourceId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update notesoperation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->