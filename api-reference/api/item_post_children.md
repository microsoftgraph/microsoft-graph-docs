# Create a new folder driveItem

Use this API to create a new folder in a drive. Your app can create folders
in the root of a drive, under an existing driveItem with a folder property, or
in the [**approot** folder in OneDrive](https://dev.onedrive.com/misc/appfolder.htm)

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/root/children
POST /me/drive/items/<id>/children
POST /me/drives/<id>/root/children
```

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
In the request body, supply a JSON representation of a
[driveItem](../resources/driveitem.md) object.


### Response
If successful, this method returns `201, Created` response code and
[item](../resources/driveitem.md) object in the response body.

### Example

##### Request

Here is an example of a request to create a new folder in the root of a user's
OneDrive.

<!-- {
  "blockType": "request",
  "name": "create_item_from_item"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/root/children
Content-Type: application/json

{
  "folder": { },
  "name": "Graph Project Files"
}
```
In the request body, supply a JSON representation of [item](../resources/driveitem.md) object.

##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "createdBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Ryan Gregg"
      }
  },
  "createdDateTime": "2016-03-21T20:01:37Z",
  "cTag": "\"c:{86EB4C8E-D20D-46B9-AD41-23B8868DDA8A},0\"",
  "eTag": "\"{86EB4C8E-D20D-46B9-AD41-23B8868DDA8A},1\"",
  "folder": {
      "childCount": 0
  },
  "id": "01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK",
  "lastModifiedBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Ryan Gregg"
      }
  },
  "lastModifiedDateTime": "2016-03-21T20:01:37Z",
  "name": "Graph Project Files",
  "parentReference": {
      "driveId": "b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7",
      "id": "01NKDM7HN6Y2GOVW7725BZO354PWSELRRZ",
      "path": "/drive/root:"
  },
  "size": 0,
  "webUrl": "https://contoso-my.sharepoint.com/personal/rgregg_contoso_com/Documents/Graph%20Project%20Files"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create children",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Create folder"
}-->
