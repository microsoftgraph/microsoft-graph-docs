# List Applications and Service Principals with specific Policy assigned

Retrieve the [application](../resources/application.md) and [service principal](../resources/serviceprincipal.md) objects with the specified policy assigned.

### Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

### HTTP request
```http
GET /policies/<id>/appliesTo
```

### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `200, OK` response code and [application](../resources/application.md) and [service principal](../resources/serviceprincipal.md) objects in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

### Example
The following example retrieves the applications and service principals with a specific policy assigned.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/policies/<id>/appliesTo
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"value":[
		{
			"@odata.type"="#microsoft.graph.application",
			"appId":"appId-value",
			"displayName":"displayName-value",
			"errorUrl":"errorUrl-value",
			"groupMembershipClaims":"groupMembershipClaims-value",
			"homepage":"homepage-value",
			"id":"id-value",
			"keyCredentials":[key-credentials],
			"logoutUrl":"logoutUrl-value",
			"replyUrls":["replyUrls-value"]
		}
	]
}
```
