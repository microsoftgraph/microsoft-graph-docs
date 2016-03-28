# Get drive

Retrieve the properties and relationships of drive object. To get properties for a drive that represent a user's OneDrive for Business, insert `/me` before `/drive` in your request. For example, `GET /me/drive` returns properties for a user's OneDrive for Business.

### Prerequisites
One of the following **scopes** is required to execute this API: 

  * Files.Read
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive
GET /drives/<id>
GET /users/<id|userPrincipalName>/drive
GET /groups/<id>/drive
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer \<token\>. Required. |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [drive](../resources/drive.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_drive"
}-->
```http
GET https://graph.microsoft.com/v1.0/drive
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.drive"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 458

{
  "id": "id-value",
  "driveType": "driveType-value",
  "owner": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "quota": {
    "deleted": 99,
    "remaining": 99,
    "state": "state-value",
    "total": 99,
    "used": 99
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get drive",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
