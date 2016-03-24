# List permissions on a driveItem

List the effective permissions of an item.

Permissions cannot be expanded on lists of items or a single item. You must
access the permissions property directly.

## Access to Permissions

The permissions collection includes potentially sensitive information and may not
be available for every caller.

* For the owner of the item, all permissions will be returned. This includes
  co-owners.
* For a non-owner caller, only the permissions that apply to the caller are
  returned.
* Permission properties that contain secrets (e.g. `shareId` and `webUrl`)
  are only returned for callers that are able to create the Permission.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/root/permissions
GET /me/drive/items/<id>/permissions
GET /groups/<id>/drive/items/<id>/permissions
```

### Request headers

| Name          | Type   | Description                                                                                                                                     |
|:--------------|:-------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| Authorization | string | Bearer <token>. Required.                                                                                                                       |
| if-none-match | string | If this request header is included and the etag provided matches the current etag on the item, an `HTTP 304 Not Modified` response is returned. |


### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters)
to help customize the response.

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and collection of
[permission](../resources/permission.md) objects in the response body.

Effective permissions of an item can come from two sources: either permissions
set directly on the item itself or that are inherited from the item's ancestors.

Callers can differentiate if the permission is inherited or not by checking the
**inheritedFrom** property. This property is an [**itemReference**](../resources/itemreference.md)
resource referencing the ancestor that the permission is inherited from.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_permissions"
}-->
```http
GET /me/drive/items/<id>/permissions
```


##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1",
      "roles": ["write"],
      "link": {
        "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
        "type": "edit"
      }
    },
    {
      "id": "2",
      "roles": ["write"],
      "grantedTo": {
        "user": {
          "id": "5D33DD65C6932946",
          "displayName": "John Doe"
        }
      },
      "inheritedFrom": {
        "driveId": "1234567890ABD",
        "id": "1234567890ABC!123",
        "path": "/drive/root:/Documents" }
    },
    {
      "id": "3",
      "roles": ["write"],
      "link": {
        "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
        "type": "edit",
        "application": {
          "id": "12345",
          "displayName": "TimeTravelPlus"
        }
      }
    }
  ]
}
```

**Note:** Response objects are truncated for clarity. All default properties
will be returned from the actual call.

See [Get permission](permission_get.md) for more details on retrieving a single
permission resource.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List permissions",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/List permissions"
}-->
