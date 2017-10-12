# Update identityProvider

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update properties in an existing [identityProvider](../resources/identityProvider.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

```http
PATCH /identityProviders/{id}
{
    "name": "new-string",
    "type": "new-string",
    "clientId": "new-string",
    "clientSecret": "new-string"
}
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | application/json  | Nature of the data in the body of an entity. Required. |

## Request body

In the request body, provide a JSON object with one or more properties that need to be updated:

|Property|Type|Description|
|:---------------|:--------|:----------|
|type|String|The identity provider type. It must be one of the following values: <li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook|
|name|String|The display name of the identity provider.|
|clientId|String|The clientId of the application used to access the identity provider.|
|clientSecret|String|The client-secret for the app used to access the identity provider.|

## Response

If successful, this method returns `204, No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.  If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example updates the definition of the token lifetime identityProvider and sets it as the organization default.

### Example Request

Here is an example of the request.

```http
PATCH https://graph.microsoft.com/beta/identityProviders/Amazon-OAuth
{
    "clientSecret": "1111111111111"
}
```

### Example Response

Here is an example of the response.

```http
HTTP/1.1 204 No Content
```
