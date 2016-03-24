# Get drive

Retrieve the properties and relationships of the drive object. A drive represents
a user's OneDrive or OneDrive for Business or a SharePoint document library
associated with an Office 365 group.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive
GET /drives/<id>
GET /users/<id | userPrincipalName>/drive
GET /groups/<id>/drive
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters)
to help customize the response.

### Request headers

| Name          | Type   | Description                 |
|:--------------|:-------|:----------------------------|
| Authorization | string | Bearer \<token\>. Required. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and
[drive](../resources/drive.md) object in the response body.

### Example

##### Request

Here is an example of the request to get the sign-in user's OneDrive or OneDrive
for Business.

<!-- {
  "blockType": "request",
  "name": "get_drive"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.drive"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7",
    "driveType": "business",    
    "owner": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "Ryan Gregg"
        }
    },
    "quota": {
        "deleted": 256938,
        "remaining": 1099447353539,
        "state": "normal",
        "total": 1099511627776
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get metadata for a OneDrive, OneDrive for Business, or Office 365 group drive",
  "keywords": "drive,onedrive,default drive,group drive",
  "section": "documentation",
  "tocPath": "OneDrive/Drive/Get Drive"
}-->
