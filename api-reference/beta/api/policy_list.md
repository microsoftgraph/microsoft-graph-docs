# List Policies

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve all [policy](../resources/policy.md) objects in the directory.

## Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /policies
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and [policy](../resources/policy.md) objects in the response body. If unsuccessful...

## Example
The following example retrieves all policies.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/policies
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"value":[
		{
			"id":"id-value",
			"alternativeIdentifier":null,
			"definition":["policy-definition"],
			"displayName":"name-value",
			"isOrganizationDefault":boolean-value,
			"keyCredentials":[key-credentials],
			"type":"type-value"
		}
	]
}
```
