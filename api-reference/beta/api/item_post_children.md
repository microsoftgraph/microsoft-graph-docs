# Create a new folder

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new folder or [DriveItem](../resources/driveitem.md) in a [Drive](../resources/drive.md) with a specified parent item or path.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/root/children
POST /me/drive/items/{parent-item-id}/children
POST /drives/{drive-id}/items/{parent-item-id}/children
POST /groups/{group-id}/drive/items/{parent-item-id}/children
```

## Request body
In the request body, supply a JSON representation of the [DriveItem](../resources/driveitem.md) resource to create.

## Response

If successful, this method returns `201 Created` response code and a [Driveitem](../resources/driveitem.md) resource in the response body.

## Example

##### Request
Here is an example of the request to create a new folder in the user's OneDrive root.

<!-- {
  "blockType": "request",
  "name": "create_item_from_item"
}-->
```http
POST https://graph.microsoft.com/beta/me/drive/root/children
Content-Type: application/json

{
  "name": "New Folder",
  "folder": { }
}
```

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "createdBy": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "309EC495-3E92-431D-9124-F0299633171D"
    }
  },
  "createdDateTime": "20160920T14:34:00Z",
  "eTag": "343F1FBD-E9B3-4DDE-BCA7-D61AEAFF44E5,1",
  "id": "ACEA49D1-1444-45A9-A1CB-68B1B28AE491",
  "lastModifiedBy": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "309EC495-3E92-431D-9124-F0299633171D"
    }
  },
  "lastModifiedDateTime": "20160920T14:34:00Z",
  "name": "New Folder",
  "parentReference": {
    "driveId": "5FE38E3C-051C-4D55-9B83-8A437658275B",
    "id": "E67A8F34-B0AA-46E1-8FF7-0750A29553DF",
    "path": "/drive/root:/"
  },
  "size": 0,
  "folder": {
    "childCount": 0
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create children",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
