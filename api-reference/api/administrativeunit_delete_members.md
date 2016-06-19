# Remove a member

Use this API to remove a member (user or group) from an administrative unit.

### Prerequisites
The following **scopes** are required to execute this API: *Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /administrativeUnits/<id>/members/<id>/$ref
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
Here is an example of the request. In the example below, id1 represents the identifier for the target administrative unit, and id2 represents the unique identifier for the member user or group to be removed from the targetted administrative unit. 

```http
DELETE https://graph.microsoft.com/beta/administrativeUnits/<id1>/members/<id2>/$ref
```

##### Response
Here is an example of the response.
 
```http
HTTP/1.1 204 No Content
```
