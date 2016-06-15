# List members

Use this API to get the members list (user and group) in an administrative unit.

### Prerequisites
The following **scopes** are required to execute this API: *Directory.Read.All* or *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*.

### HTTP request

```http
GET /administrativeUnits/<id>/members
```
### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <token>. Required.|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a [user](../resources/user.md) and/or [group](../resources/group.md) objects in the response body.
### Example
##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/administrativeUnits/<id>/members
```

##### Response
Here is an example of the response.
 
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 100

{
  "accountEnabled":true,
  "businessPhones":[],
  "companyName":null,
  "displayName":"Demo User"
}
```
