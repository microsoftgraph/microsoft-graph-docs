# Update profilephoto

Update the photo for any user in the tenant including the signed-in user, or the specified group or contact. Since there
is currently a limit of 4MB on the total size of each REST request, this limits the size of the photo
you can add to under 4MB.

Use only PUT for this operation in the beta version.

> **Note** The update photo operation in beta supports only the user's work or school mailboxes and not personal mailboxes.

## Prerequisites
One of the following **scopes** is required to execute this API for:

-	Profile photo of any user in the tenant including the signed-in user - User.ReadWrite.All
-	Profile photo of specifically the signed-in user - User.ReadWrite, User.ReadWrite.All
- Profile photo of a **group** - *Group.ReadWrite.All*
- Photo of a **contact** - *Contacts.ReadWrite*

## HTTP request to update the photo
<!-- { "blockType": "ignored" } -->
```http
PUT /me/photo/$value
PUT /users/{id | userPrincipalName}/photo/$value
PUT /groups/{id}/photo/$value
PUT /me/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | image/jpeg. Required.  |

## Request body
In the request body, include the binary data of the photo in the request body.

## Response
If successful, this method returns a `200 OK` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_profilephoto"
}-->
```http
PUT https://graph.microsoft.com/beta/me/photo/$value
Content-type: image/jpeg

Binary data for the image

```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profilePhoto"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update profilephoto",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
