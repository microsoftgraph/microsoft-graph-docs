# notebook: importNotebook


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/notes/notebooks/<id>/importNotebook
POST /users/<id>/notes/notebooks/<id>/importNotebook
POST /groups/<id>/notes/notebooks/<id>/importNotebook

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body

### Response
If successful, this method returns `200, OK` response code and [importStatusModel](../resources/importstatusmodel.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "notebook_importnotebook"
}-->
```http
POST https://graph.microsoft.com/beta/me/notes/notebooks/<id>/importNotebook
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.importstatusmodel"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 89

{
  "id": "id-value",
  "status": "status-value",
  "createdDateTime": "datetime-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notebook: importNotebook",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->