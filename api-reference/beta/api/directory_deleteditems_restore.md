# Restore deleted item

Restores a recently deleted item from [deleted items](../resources/directory.md). 

Currently, deleted items functionality is only supported for the [group](../resources/group.md) and [user](../resources/user.md) resources. If an item was accidentally deleted, you can fully restore the item.

A recently deleted item will remain available for up to 30 days. After 30 days, the item is permanently deleted.

### Prerequisites
One of the following **scopes** is required to execute this API: 
* For users: *User.ReadWrite.All or Directory.AccessAsUser.All*
* For groups: *Group.ReadWrite.All or Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directory/deleteditems/{id}/restore
```

### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Accept | application/json |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `200 OK` response code and [directoryObject](../resources/directoryobject.md) object in the response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directory"
}-->
```http
POST https://graph.microsoft.com/beta/directory/deleteditems/46cc6179-19d0-473e-97ad-6ff84347bbbb/restore
```
In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
  "@odata.type":"#microsoft.graph.group",
  "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
  "displayName":"SampleGroup",
  "groupTypes":["Unified"],
  "mail":"example@contoso.com",
  "mailEnabled":true,
  "mailNickname":"Example",
  "securityEnabled":false,
  "visibility":"Public"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create deletedItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->