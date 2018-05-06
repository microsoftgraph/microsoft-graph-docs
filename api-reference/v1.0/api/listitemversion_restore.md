# Restore a previous version of a ListItem

Restore a previous version of a ListItem to be the current version. This will create a new version with the contents of the previous version, but preserves all existing versions of the item.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|            Permission type             |         Permissions (from least to most privileged)          |
| :------------------------------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |
| Delegated (personal Microsoft account) | n/a                                                          |
| Application                            | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{site-id}/items/{item-id}/versions/{version-id}/restoreVersion
POST /sites/{site-id}/lists/{list-id}/items/{item-id}/versions/{version-id}/restoreVersion
```

### Request body

No request body is required.

## Example

This example restores a version of a listItem identified by `{item-id}` and `{version-id}`.

<!-- { "blockType": "request", "name": "restore-item-version-listItem", "scopes": "files.readwrite", "target": "action" } -->

```http
POST /sites/{site-id}/items/{item-id}/versions/{version-id}/restoreVersion
```

## Response

If successful, the API call returns a `204 No content`.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No content
```

<!-- {
  "type": "#page.annotation",
  "description": "Create a copy of an existing item.",
  "keywords": "copy existing item",
  "section": "documentation",
  "tocPath": "Items/Copy"
} -->
