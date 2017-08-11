# List Policies assigned to Application or Service Principal

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the [policy](../resources/policy.md) objects assigned to an application or service principal.

## Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /applications/{id}/policies
```

> Note: The "id" in the request is the "id" property of the application or service principal, not the "appid" property.

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and [policy](../resources/policy.md) objects in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Example
The following example retrieves the policies assigned to an application.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/applications/{id}/policies
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Cache-Control: private
Content-Type: application/json

{
	"value":[
		{
			"@odata.type":"#microsoft.graph.policy",
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
