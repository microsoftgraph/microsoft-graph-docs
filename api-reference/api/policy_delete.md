# Delete Policy

Delete a [policy](../resources/policy.md).

### Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

### HTTP request

```http
DELETE /policies/<id>
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `204, No Content` response code. If unsuccessful...

### Example
The following example deletes a policy.

##### Request
Here is an example of the request.

```http
DELETE https://graph.microsoft.com/beta/policies/<id>
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 204 No Content
```
