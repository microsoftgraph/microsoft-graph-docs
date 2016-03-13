# Create binding

Use this API to create a new binding.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/bindings
POST /me/drive/root/workbook/bindings
POST /workbooks/<id>/workbook/bindings

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [binding](../resources/binding.md) object.


### Response
If successful, this method returns `201, Created` response code and [binding](../resources/binding.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_binding_from_workbook"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/bindings
Content-type: application/json
Content-length: 3

{
}
```
In the request body, supply a JSON representation of [binding](../resources/binding.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.binding"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 3

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create binding",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->