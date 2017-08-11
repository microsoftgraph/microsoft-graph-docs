# Delete permission

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Remove access to a [DriveItem](../resources/driveitem.md).

Only permissions that are not inherited can be deleted.
The **inheritedFrom** property must be `null`.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /me/drive/items/{item-id}/permissions/{perm-id}
DELETE /me/drive/root:/{path}:/permissions/{perm-id}
DELETE /groups/{group-id}/drive/items/{item-id}/permissions/{perm-id}
DELETE /drives/{drive-id}/items/{item-id}/permissions/{perm-id}
```

## Request headers

| Name          | Type   | Description                                                                                                                                                                                       |
|:--------------|:-------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| if-match      | string | If this request header is included and the eTag (or cTag) provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code.
It does not return anything in the response body.

## Example

##### Request

Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_permission"
}-->
```http
DELETE https://graph.microsoft.com/beta/me/drive/root/items/{item-id}/permissions/{perm-id}
```

##### Response

Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

## Remarks

* [Drives](../resources/drive.md) with a **driveType** of `personal` (OneDrive Personal) cannot create or modify permissions on the root DriveItem. 

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete permission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Delete permission"
}-->
