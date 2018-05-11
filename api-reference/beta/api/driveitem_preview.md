# Embeddable file previews

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This action allows you to obtain short-lived embeddable URLs for an item.

If you wish to obtain long-lived embeddable links, use the [createLink][] API instead.

[createLink]: driveItem_createLink.md

## Permissions

One of the following permissions is required to call this API.
To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged)
|:---------------------------------------|:-------------------------------------------
| Delegated (work or school account)     | Files.Read, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All
| Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.ReadWrite.All
| Application                            | n/a

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/preview
POST /groups/{groupId}/drive/items/{itemId}/preview
POST /me/drive/items/{itemId}/preview
POST /sites/{siteId}/drive/items/{itemId}/preview
POST /users/{userId}/drive/items/{itemId}/preview
POST /shares/{shareId}/driveItem/preview
```

### Request body

The body of the request defines properties of the embeddable URL your application is requesting.
The request should be a JSON object with the following properties.

|   Name      |  Type         | Description
|:------------|:--------------|:-----------------------------------------------
| viewer      | string        | Optional. Preview app to use. `onedrive` or `office`. If null, a suitable viewer will be chosen automatically.
| chromeless  | boolean       | Optional. If `true` (default), the embedded view will not include any controls.
| allowEdit   | boolean       | Optional. If `true`, the file can be edited from the embedded UI.
| page        | string/number | Optional. Page number of document to start at, if applicable. Specified as string for future use cases around file types such as ZIP.
| zoom        | number        | Optional. Zoom level to start at, if applicable.

### Response

```json
{
    "getUrl": "https://www.onedrive.com/embed?foo=bar&bar=baz",
    "postParameters": "param1=value&param2=another%20value",
    "postUrl": "https://www.onedrive.com/embed_by_post"
}
```

The response will be a JSON object containing the following properties:

| Name           | Type   | Description
|:---------------|:-------|:---------------------------------------------------
| getUrl         | string | URL suitable for embedding using HTTP GET (iframes, etc.)
| postUrl        | string | URL suitable for embedding using HTTP POST (form post, JS, etc.)
| postParameters | string | POST parameters to include if using postUrl

Either getUrl, postUrl, or both may be returned depending on the current state of embed support for the specified options.

postParameters is a string formatted as `application/x-www-form-urlencoded`, and if performing a POST to the postUrl the content-type should be set accordingly. For example:
```
POST https://www.onedrive.com/embed_by_post
Content-Type: application/x-www-form-urlencoded

param1=value&param2=another%20value
```

### Viewers

The following values are allowed for the **viewer** parameter.

| Type value | Description
|:-----------|:----------------------------------------------------------------
| `auto`     | Chooses an appropriate app for rendering the file. In most cases this will use the `onedrive` previewer, but may vary by file type.
| `onedrive` | Use the OneDrive previewer app to render the file.
| `office`   | Use the WAC (Office online) to render the file. Only valid for Office documents.

### Chrome vs Chromeless

If 'chromeless' is true, the preview will be a bare rendering of the file.
Otherwise, there may be additional toolbars/buttons displayed for interacting with the document/view.

### View/Edit

If 'edit' is true, the document can be modified by user interaction with the embedded preview.
This capability may not be available for all preview apps or file types.

### Page/Zoom

The 'page' and 'zoom' options may not be available for all preview apps, but will be applied if the preview app supports it.
