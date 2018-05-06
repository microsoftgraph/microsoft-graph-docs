# Download contents of a DriveItemVersion resource

Retrieve the contents of a specific version of a [DriveItem](../resources/driveitem.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |


## HTTP request

<!-- { "blockType": "ignored"} -->

```http
GET /drives/{drive-id}/items/{item-id}/versions/{version-id}/contents
GET /groups/{group-id}/drive/{item-id}/versions/{version-id}/contents
GET /me/drive/items/{item-id}/versions/{version-id}/contents
GET /sites/{site-id}/drive/items/{item-id}/versions/{version-id}/contents
GET /users/{user-id}/drive/items/{item-id}/versions/{version-id}/contents
```

## Response

Returns a `302 Found` response redirecting to a pre-authenticated download URL for the bytes of the file.

To download the contents of the file your application will need to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immedately.

Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header to download.

## Example

This example retrieves a version of a file in the current user's drive.

### HTTP request

<!-- { "blockType": "request", "name": "get-version-contents", "scopes": "files.read" } -->

```http
GET /me/drive/items/{item-id}/versions/{version-id}/contents
```

### Response

This returns a redirect to where the contents of the version can be downloaded.

<!-- { "blockType": "response", "isEmpty": true  } -->

```http
HTTP/1.1 302 Redirect
Location: https://onedrive.com/34FF49D6...
```


## Remarks

OneDrive does not preserve the complete metadata for previous versions of a file.

When your app retrieves the list of available versions for a file, a [DriveItemVersion](../resources/driveItemVersion.md) resource is returned that provides the available information about the specific version.

<!-- {
  "type": "#page.annotation",
  "description": "List, review, and download previous versions of a driveItem",
  "keywords": "version, version history, versions",
  "section": "documentation",
  "tocPath": "Items/Version history"
} -->
