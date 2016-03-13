# Create profilePhoto

Use this API to create a new profilePhoto.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/photos
POST /users/<id>/photos
POST /drive/root/createdByUser/photos

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [profilePhoto](../resources/profilephoto.md) object.


### Response
If successful, this method returns `201, Created` response code and [profilePhoto](../resources/profilephoto.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_profilephoto_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/photos
Content-type: application/json
Content-length: 33

{
  "height": 99,
  "width": 99
}
```
In the request body, supply a JSON representation of [profilePhoto](../resources/profilephoto.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profilephoto"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 53

{
  "height": 99,
  "width": 99,
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create profilePhoto",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->