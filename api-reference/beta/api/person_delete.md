# Delete person

Delete a person.
### Prerequisites
The following **scopes** are required to execute this API: *People.ReadWrite*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/people/<id>
DELETE /users/<id>/people/<id>
DELETE /drive/root/createdByUser/people/<id>

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_person"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/people/<id>
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->