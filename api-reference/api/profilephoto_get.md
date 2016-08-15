# Get photo

Get the specified [profilePhoto](../resources/profilephoto.md) or its metadata (profilePhoto properties).

A GET operation looks for the specified photo in the user's mailbox on Exchange Online.

The supported sizes of HD photos on Exchange Online are as follows: '48x48', '64x64', '96x96', 
'120x120', '240x240', '360x360','432x432', '504x504', and '648x648'. 

You can get the metadata of the largest available photo, or specify a size to get the metadata 
for that photo size. If the size you request is not available, you can still get a smaller size that 
the user has uploaded and made available. For example, if the user uploads a photo that is 504x504 pixels, 
then all but the 648x648 size of photo will be available for download. If the specified size is not available 
in the user's mailbox, the size of '1x1' is returned with the rest of metadata.

### Prerequisites
One of the following **scopes** is required to execute this API for:

*	Profile photo of any user in the tenant including the signed-in user - *User.ReadBasic.All; User.Read.All; User.ReadWrite.All*
*	Profile photo of specifically the signed-in user - *User.Read, User.ReadWrite; User.ReadBasic.All; User.Read.All; User.ReadWrite.All*
* Profile photo of a **group** - *Group.Read.All; Group.ReadWrite.All*
* Photo of a **contact** - *Contacts.Read; Contacts.ReadWrite*

### HTTP request to get the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo/$value
GET /users/<id | userPrincipalName>/photo/$value
GET /groups/<id>/photo/$value
GET /me/contacts/<id>/photo/$value
GET /users/<id | userPrincipalName>/contacts/<id>/photo/$value
GET /me/contactfolders/<contactFolderId>/contacts/<id>/photo/$value
GET /users/<id | userPrincipalName>/contactfolders/<contactFolderId>/contacts/<id>/photo/$value
```
### HTTP request to get the metadata of the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo
GET /users/<id | userPrincipalName>/photo
GET /groups/<id>/photo
GET /me/contacts/<id>/photo
GET /users/<id | userPrincipalName>/contacts/<id>/photo
GET /me/contactfolders/<contactFolderId>/contacts/<id>/photo
GET /users/<id | userPrincipalName>/contactfolders/<contactFolderId>/contacts/<id>/photo
```

### HTTP request to get the metadata for a specific photo size
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo/<size>
GET /users/<id | userPrincipalName>/photo/<size>
GET /groups/<id>/photo/<size>
GET /me/contacts/<id>/photo/<size>
GET /users/<id | userPrincipalName>/contacts/<id>/photo/<size>
GET /me/contactfolders/<contactFolderId>/contacts/<id>/photo/<size>
GET /users/<id | userPrincipalName>/contactfolders/<contactFolderId>/contacts/<id>/photo/<size>
```

### Parameters
| Parameter       | Type | Description|
|:-----------|:------|:----------|
|_URL parameters_| | |
| size  | string  | A photo size. |

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.
### Response for getting the photo
If successful, this method returns a `200 OK` response code and binary data of the requested photo.  If no photo exists, the operation returns `404 Not Found`.
### Response for getting the metadata of the photo
If successful, this method returns a `200 OK` response code and [profilePhoto](../resources/profilePhoto.md) object in the response body.
### Example
##### Request 1
This request gets the photo for the signed-in user, in the largest available size.
<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/photo/$value
```

##### Response 1
Contains the binary data of the requested photo. The HTTP response code is 200.

##### Request 2
This request gets the metadata of the user photo of the signed-in user.
<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/photo
```

##### Response 2

The following response data shows the photo metadata. Note: The response object shown here may be truncated for brevity.
<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Me/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/v1.0/users('ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4')/photo",
    "@odata.mediaContentType": "image/jpeg",
    "@odata.mediaEtag": "\"BA09D118\"",
    "id": "240X240",
    "width": 240,
    "height": 240
}
```

The following response data shows the contents of a response when a photo hasn't already been uploaded for the user. Note: The response object shown here may be truncated for brevity.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Me/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/v1.0/users('ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4')/photo",
    "@odata.mediaContentType": "image/gif",
    "@odata.mediaEtag": "",
    "id": "1X1",
    "width": 1,
    "height": 1
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get photo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
