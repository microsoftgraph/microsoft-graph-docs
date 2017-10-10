# Get identityProvider

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties of an existing [identityProvider](../resources/identityProvider.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.Read.All IdentityProvider.ReadWrite.All|

## HTTP request

```http
GET /identityProviders/{id}
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and a JSON representation of the [identityProvider](../resources/identityProvider.md) in the response body.

## Example

The following example retrieves a specific identityProvider.

### Example Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/identityProviders/Amazon-OAuth
```

### Example Response

Here is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "value": [{
        "id": "Amazon-OAUTH",
        "type": "Amazon",
        "name": "Login with Amazon",
        "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
        "clientSecret": "*****",
    }]
}
```
