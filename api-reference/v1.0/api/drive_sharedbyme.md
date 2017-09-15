---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
---
# List items shared from a drive

Return the shared items that exist in the target drive.

**Note:** this API is only available on OneDrive Personal.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.Read.All, Files.ReadWrite.All    |
|Application | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "request", "name": "shared-by-me", "scopes": "files.read service.onedrive" } -->

```http
GET /drive/shared
```

## Response

This returns a collection of [driveItem resources](../resources/driveitem.md) that enumerates the set of items that have been shared by the current user.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.driveItem)", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    { "id": "1231abc", "name": "shared-file1.txt" },
    { "id": "1231abd", "name": "shared-file2.txt" },
    { "id": "1231abf", "name": "shared-file3.txt" },
  ]
}
```

## Error Responses

Read the [Error Responses][error-response] topic for more information about
how errors are returned.

[error-response]: ../concepts/errors.md

## Remarks

* Shared By Me is not supported on:
  * SharePoint Server 2016
  * SharePoint online
  * OneDrive for Business

<!-- {
  "type": "#page.annotation",
  "description": "List the items shared in the target drive.",
  "keywords": "drive,onedrive.drive,default drive",
  "section": "documentation",
  "tocPath": "Drives/List shared files"
} -->
