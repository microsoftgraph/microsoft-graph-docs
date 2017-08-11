# Move a DriveItem

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

To move a DriveItem to a new parent item, your app requests to update the **parentReference** of the DriveItem to move.
This is a special case of the [Update](item_update.md) method.
Your app can combine moving an item to a new container and updating other properties of the item into a single request.

Items cannot be moved between [Drives](../resources/drive.md) using this request.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All

## HTTP request

```http
PATCH /me/drive/items/{item-id}
PATCH /me/drive/root:/{item-path}
PATCH /drives/{drive-id}/items/{item-id}
PATCH /groups/{group-id}/drive/{item-id}
```

## Request headers

| Name          | Type   | Description                                                                                                                                                         |
|:--------------|:-------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| if-match      | String | If this request header is included and the eTag (or cTag) provided does not match the current eTag on the folder, a `412 Precondition Failed` response is returned. |


## Request body
In the request body, supply the new value for the **parentReference** property.
Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values.
For best performance you shouldn't include existing values that haven't changed.

**Note:** When moving items to the root of a OneDrive you cannot use the `"id:" "root"` syntax.
You either need to use the real ID of the root folder, or use `{"path": "/drive/root"}` for the parent reference.

## Response

If successful, this method returns a `200 OK` response code and updated [DriveItem](../resources/driveitem.md) resource in the response body.

## Example
This example moves an item specified by {item-id} into the **Documents** folder in the user's OneDrive.

<!-- {
  "blockType": "request",
  "name": "update_item"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/drive/items/{item-id}
Content-type: application/json

{
	"name": "new-item-name",
	"parentReference" : {"path": "/drive/root:/Documents"}
}
```
##### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"id": "0123456789abc",
	"name": "new-item-name",
	"folder": { "childCount": 3 },
  "parentReference": {
    "id": "507DE6D5-0201-496A-AA87-5E2563247982",
    "path": "/drive/root:/Documents"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Move item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
