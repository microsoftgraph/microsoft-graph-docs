# Upload an item

The simple upload API allows you to provide the contents of a new file or update the contents of an existing file in a single API call. This method only supports files up to 4MB in size.

**Note:** Support for chunked uploads or upload using a URL are not yet available.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /drive/items/{parent-id}:/{filename}:/content
PUT /drive/root:/{parent-path}/{filename}:/content
PUT /drive/items/{parent-id}/children/{filename}/content
```

### Request body
The contents of the request body should be the binary stream of the file to be uploaded.

### Query parameters
You can use these optional query string parameters to change the behavior of the PUT request:

| Parameter Name             | Value  | Description    |
|:---------------------------|:-------|:--------------------------|
| **@name.conflictBehavior** | string | Specify the behavior to use if the file already exists. You can use the values *fail*, *replace*, or *rename*. The default for PUT is *replace*. |

### Response
If successful, this method returns an [item](../resources/driveitem.md) object in the response body for the newly created file.
### Example
This example renames and moves a folder to a new parent path.
<!-- {
  "blockType": "request",
  "name": "upload_item"
}-->
```http
PUT /drive/root:{item-path}:/content
Content-type: text/plain

The contents of the file goes here.
```

### Response
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
