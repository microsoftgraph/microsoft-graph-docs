# Get permission

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of permission object.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.Read
* Files.ReadWrite
* Files.Read.All
* Files.ReadWrite.All
* Sites.Read.All
* Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{item-id}/permissions/{perm-id}
GET /me/drive/root:/{path}:/permissions/{perm-id}
GET /drives/{drive-id}/items/{item-id}/permissions/{perm-id}
GET /groups/{group-id}/drive/items/{item-id}/permissions/{perm-id}
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [Permission](../resources/permission.md) resource in the response body.

## Example

##### Request

Here is an example of the request to access a permission on the root folder.

<!-- {
  "blockType": "request",
  "name": "get_permission"
}-->
```http
GET https://graph.microsoft.com/beta/me/drive/items/{item-id}/permissions/{perm-id}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 762

{
  "grantedTo": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12"
    }
  },
  "id": "1",
  "roles": [ "write" ]
}
```

## Remarks

The [Permission](../resources/permission.md) resource uses _facets_ to provide information about the kind of permission represented by the resource.

Permissions with a [**link**](../resources/sharinglink.md) facet represent sharing links created on the item. 
Sharing links contain a unique token that provides access to the item for anyone with the link.

Permissions with a [**invitation**](../resources/sharinginvitation.md) facet represent permissions added by inviting specific users or groups to have access to the file.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get permission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Get permission"
}-->
