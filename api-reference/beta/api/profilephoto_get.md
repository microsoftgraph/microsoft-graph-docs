# Get photo

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the specified [profilePhoto](../resources/profilephoto.md) or its metadata (**profilePhoto** properties).

A GET photo operation first attempt to retrieve the specified photo from Office 365. If the photo is not available in Office 365, the API attempts to retrieve the photo from Azure Active Directory.

The supported sizes of HD photos on Office 365 are as follows: '48x48', '64x64', '96x96', '120x120', '240x240', 
'360x360','432x432', '504x504', and '648x648'. Photos can be any dimension if they are stored in Azure Active Directory.

You can get the metadata of the largest available photo, or specify a size to get the metadata for that photo size.
If the size you request is not available, you can still get a smaller size that the user has uploaded and made available.
For example, if the user uploads a photo that is 504x504 pixels, then all but the 648x648 size of photo will be available for download.
If the specified size is not available in the user's mailbox or in Azure Active Directory, the size of '1x1' is returned with the rest of 
metadata.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

> **Note:** The GET photo operation in beta supports a user's work, school, or personal accounts. The GET photo metadata operation, however, supports only the user's work or school accounts and not personal accounts.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | For **user** resource:<br/>User.Read, User.ReadBasic.All, User.Read.All, User.ReadWrite, User.ReadWrite.All<br /><br />For **group** resource:<br />Group.Read.All, Group.ReadWrite.All<br /><br />For **contact** resource:<br />Contacts.Read, Contacts.ReadWrite |
|Delegated (personal Microsoft account)  <br /> **Note**: Metadata operation is not supported. | For **user** resource:<br/>User.Read, User.ReadWrite<br /><br />For **contact** resource:<br />Contacts.Read, Contacts.ReadWrite |
|Application                        | For **user** resource:<br/>User.Read.All, User.ReadWrite.All<br /><br />For **group** resource:<br />Group.Read.All, Group.ReadWrite.All<br /><br />For **contact** resource:<br />Contacts.Read, Contacts.ReadWrite |

## HTTP request to get the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo/$value
GET /users/{id | userPrincipalName}/photo/$value
GET /groups/{id}/photo/$value
GET /me/contacts/{id}/photo/$value
GET /users/{id | userPrincipalName}/contacts/{id}/photo/$value
GET /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
GET /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
```
## HTTP request to get the metadata of the photo
<!-- { "blockType": "ignored" } -->
```http
GET /me/photo
GET /users/{id | userPrincipalName}/photo
GET /groups/{id}/photo
GET /me/contacts/{id}/photo
GET /users/{id | userPrincipalName}/contacts/{id}/photo
GET /me/contactfolders/{contactFolderId}/contacts/{id}/photo
GET /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo
```

## HTTP request to get the metadata for a specific photo size
<!-- { "blockType": "ignored" } -->
```http
GET /me/photos/{size}
GET /users/{id | userPrincipalName}/photos/{size}
GET /groups/{id}/photos/{size}
GET /me/contacts/{id}/photos/{size}
GET /users/{id | userPrincipalName}/contacts/{id}/photos/{size}
GET /me/contactfolders/{contactFolderId}/contacts/{id}/photos/{size}
GET /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photos/{size}
```

## Parameters

|**Parameter**|**Type**|**Description**|
|:-----|:-----|:-----|
|_URL parameters_|
|size  |String  | A photo size. The supported sizes of HD photos on Office 365 are as follows: '48x48', '64x64', '96x96', '120x120', '240x240', 
'360x360','432x432', '504x504', and '648x648'. Photos can be any dimension if they are stored in Azure Active Directory. |

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response for getting the photo
If successful, this method returns a `200 OK` response code and binary data of the requested photo.  If no photo exists, the operation returns `404 Not Found`.
## Response for getting the metadata of the photo
If successful, this method returns a `200 OK` response code and [profilePhoto](../resources/profilePhoto.md) object in the response body.

## Example
##### Request 1
This request gets the photo for the signed-in user, in the largest available size.

<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/beta/me/photo/$value
Content-Type: image/jpg
```

##### Response 1
Contains the binary data of the requested photo. The HTTP response code is 200.

##### Request 2
This request gets the 48x48 photo for the signed-in user.

<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/beta/me/photos/48x48/$value
Content-Type: image/jpg
```

##### Response 2
Contains the binary data of the requested 48x48 photo. The HTTP response code is 200.

##### Request 3
This request gets the metadata of the user photo of the signed-in user.

<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/beta/me/photo
```

##### Response 3
The following response data shows the photo metadata. Note: The response object shown here may be truncated for brevity.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4')/photo",
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4')/photo",
    "@odata.mediaContentType": "image/gif",
    "@odata.mediaEtag": "",
    "id": "1X1",
    "width": 1,
    "height": 1
}
```
## Using the binary data of the requested photo

When you use the `/photo/$value` endpoint to get the binary data for a profile photo, you'll need to convert the data into a base-64 string in order to add it as an email attachment. Here is an example in JavaScript of how to create an array that you can pass as the value of the `Attachments` parameter of an [Outlook Message](user_post_messages.md).

      const attachments = [{
        '@odata.type': '#microsoft.graph.fileAttachment',
        ContentBytes: file.toString('base64'),
        Name: 'mypic.jpg'
      }];

See the [Microsoft Graph Connect Sample for Node.js](https://github.com/microsoftgraph/nodejs-connect-rest-sample) for an implementation of this example.

If you want to display the image on a web page, create an in-memory object from the image and make that object the source of an image element. Here is an example in JavaScript of this operation.

    const url = window.URL || window.webkitURL;
    const blobUrl = url.createObjectURL(image.data);
    document.getElementById(imageElement).setAttribute("src", blobUrl);

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get photo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
