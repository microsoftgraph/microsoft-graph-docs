# Get Policy

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties of a [policy](../resources/policy.md).

## Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /policies/{id}
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and a [policy](../resources/policy.md) object in the response body. If unsucccessful...

## Example
The following example retrieves a specific policy.

##### Request
Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/policies/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"@odata.context":"https://graph.microsoft.com/beta/$metadata#policies/$entity",
	"id":"id-value",
	"alternativeIdentifier":null,
	"definition":["policy-definition"],
	"displayName":"name-value",
	"isOrganizationDefault":boolean-value,
	"keyCredentials":[key-credentials],
	"type":"type-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: createReply",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
