# Update Policy

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update properties in a preexisting [policy](../resources/policy.md).

## Prerequisites
One of the following **scopes** is required to execute this API:
*Directory.AccessAsUser.All*

## HTTP request

```http
PATCH /policies/{id}
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | application/json  | Nature of the data in the body of an entity. Required. |

## Request body
In the request body, provide a JSON object with the parameters that need to be updated. The following table shows the possible parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The stringified version of the [policy](../resources/policy.md) object.|
|displayName|String|A custom name for the policy.|
|isOrganizationDefault|Boolean|Specifies if this policy is applied by default.|
|type|String|Specifies the type of policy. Currently must be "TokenLifetimePolicy"|

### Response
If successful, this method returns `204, No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Example
The following example updates the definition of the token lifetime policy and sets it as the organization default.

##### Request
Here is an example of the request.

```http
PATCH https://graph.microsoft.com/beta/policies/{id}
Content-Type: application/json
{
	"definition":["{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\",\"MaxInactiveTime\":\"20:00:00\",}}"],
	"isOrganizationDefault":true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 204 No Content
```
