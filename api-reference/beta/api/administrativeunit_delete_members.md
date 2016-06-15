# Remove a member

Use this API to remove a member (user or group) from an administrative unit.

### Prerequisites
The following **scopes** are required to execute this API: *Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /administrativeUnits/<id>/members/<id>
```
### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <token>. Required.|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.

```http
DELETE https://graph.microsoft.com/beta/administrativeUnits/<id>/members/<id>
Content-type: application/json
Content-length: 0

```
In the request body, supply a JSON representation of the `id` of the [user](../resources/user.md) or [group](../resources/group.md) object you want to add.

##### Response
Here is an example of the response.
 
```http
HTTP/1.1 204 No Content
```
