# List identityProvider

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve all [identityProviders](../resources/identityProvider.md) in the directory.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.Read.All IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

```http
GET /identityProviders
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and a collection of [identityProviders](../resources/identityProvider.md) in JSON representation in the response body.

## Example

The following example retrieves all identityProvider.

### Example Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/identityProviders
```

### Example Response

Here is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "value": [{
        "id": "Amazon-OAUTH",
        "name": "Login with Amazon",
        "type": "Amazon",
        "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
        "clientSecret": "*****"
    }]
}
```
