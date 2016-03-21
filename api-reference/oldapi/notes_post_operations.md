# Create notesOperation

Use this API to create a new notesOperation.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/notes/operations
POST /users/<id>/notes/operations
POST /groups/<id>/notes/operations

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [notesOperation](../resources/notesoperation.md) object.


### Response
If successful, this method returns `201, Created` response code and [notesOperation](../resources/notesoperation.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_notesoperation_from_notes"
}-->
```http
POST https://graph.microsoft.com/beta/me/notes/operations
Content-type: application/json
Content-length: 231

{
  "notesOperation": {
    "status": "status-value",
    "createdDateTime": "datetime-value",
    "lastActionDateTime": "datetime-value",
    "resourceLocation": "resourceLocation-value",
    "resourceId": "resourceId-value"
  }
}
```
In the request body, supply a JSON representation of [notesOperation](../resources/notesoperation.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notesoperation"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 253

{
  "notesOperation": {
    "id": "id-value",
    "status": "status-value",
    "createdDateTime": "datetime-value",
    "lastActionDateTime": "datetime-value",
    "resourceLocation": "resourceLocation-value",
    "resourceId": "resourceId-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create notesOperation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->