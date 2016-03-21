# Create ContactFolder

Create a new contactFolder as a child of a specified folder. 

You can also [create a new contactFolder under the user's default contact folder](user_post_contactfolders.md).
### Prerequisites
One of the following **scopes** is required to execute this API:
*Contacts.ReadWrite*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/contactFolders/<id>/childFolders
POST /users/<id | userPrincipalName>/contactFolders/<id>/childFolders
```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json. Required.  |

### Request body
In the request body, supply a JSON representation of [ContactFolder](../resources/contactfolder.md) object.


### Response
If successful, this method returns `201, Created` response code and [ContactFolder](../resources/contactfolder.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_contactfolder_from_contactfolder"
}-->
```http
POST https://graph.microsoft.com/beta/me/contactFolders/<id>/childFolders
Content-type: application/json
Content-length: 84

{
  "displayName": "displayName-value"
}
```
In the request body, supply a JSON representation of [contactFolder](../resources/contactfolder.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contactFolder"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 104

{
  "parentFolderId": "parentFolderId-value",
  "displayName": "displayName-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create ContactFolder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
