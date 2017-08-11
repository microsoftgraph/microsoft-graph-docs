# Upload or replace the contents of a driveItem

The simple upload API allows you to provide the contents of a new file or update the contents of an existing file in a single API call. 
This method only supports files up to 4MB in size.

To upload large files see [Upload large files with an upload session](item_createuploadsession.md).

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /me/drive/items/{parent-id}:/{filename}:/content
PUT /me/drive/root:/{parent-path}/{filename}:/content
PUT /me/drive/items/{parent-id}/children/{filename}/content
PUT /groups/{id}/drive/items/{parent-id}/children/{filename}/content
```

## Request body
The contents of the request body should be the binary stream of the file to be
uploaded.

## Response

If successful, this method returns a [driveItem](../resources/driveitem.md) object
in the response body for the newly created file.

## Example
This example uploads a file by path to the signed-in user's OneDrive.

<!-- {
  "blockType": "request",
  "name": "upload_item"
}-->
```http
PUT /me/drive/root:/{item-path}:/content
Content-type: text/plain

The contents of the file goes here.
```

##### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "0123456789abc",
  "name": "myfile.jpg",
  "size": 10191,
  "file": { }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Upload item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
