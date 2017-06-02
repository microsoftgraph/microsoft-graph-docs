# Create registeredOwner

Add a user as a registered owner of the device.
## Prerequisites
One of the following **scopes** is required to execute this API:  
*Directory.ReadWrite.All* or *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /devices/{id}/registeredOwners/$ref

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, supply a JSON representation of a [user](../resources/user.md) to be added.

## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
Here is an example of the request. In the request body, supply a reference to the [user](../resources/user.md) to be added.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_device"
}-->
```http
POST https://graph.microsoft.com/v1.0/devices/{id}/registeredOwners/$ref
Content-type: application/json
Content-length: 97

{
  "@odata.id":"https://graph.microsoft.com/v1.0/users/af9f55cc-78ad-4476-be6e-f9bb86a3dddd"
}
```

##### Response
Here is an example of the response.

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create registeredOwner",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->