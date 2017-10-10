# Create identityProvider

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new [identityProvider](../resources/identityProvider.md) by specifying display name, identityProvider type, client id, and client secret.  Setting the scopes is optional.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All IdentityProvider.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

```http
POST /identityProviders
Content-type: application/json
{
    "name": "string",
    "type": "string",
    "clientId": "string",
    "clientSecret": "string",
    "scopes": "string",
}
```

## Request headers

|Name|Type|Description|
|:---------------|:--------|:----------|
|Authorization|String|Bearer {token}. Required.|
|Content-Type|application/json|Nature of the data in the body of an entity. Required.|

## Request body

In the request body, provide a JSON representation of [identityProvider](../resources/identityProvider.md) object.

The following table shows the required properties:

|Property|Type|Description|
|:---------------|:--------|:----------|
|type|String|The identity provider type. It must be one of the following values: <li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook|
|name|String|The display name of the identity provider.|
|clientId|String|The clientId of the application used to access the identity provider.|
|clientSecret|String|The client-secret for the app used to access the identity provider.|

The following table shows the optional properties:

|Property|Type|Description|
|:---------------|:--------|:----------|
|scopes|String|The scopes to request from the identity provider.  This is a space delimited list of scopes.|

## Response

If successful, this method returns `201, Created` response code and [identityProvider](../resources/identityProvider.md) object in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example creates an identityProvider.

### Example Request

Here is an example of the request.

```http
POST https://graph.microsoft.com/beta/identityProviders
Content-type: application/json
{
    "name": "Login with Amazon",
    "type": "Amazon",
    "clientId": "00000000-0000-0000-0000-000000000000",
    "clientSecret": "000000000000",
    "scopes": "openid email profile",
}
```

### Example Response

Here is an example of the response.

```http
HTTP/1.1 201 Created
Content-type: application/json
{
    "id": "Amazon-OAUTH",
    "name": "Login with Amazon",
    "type": "Amazon",
    "clientId": "00000000-0000-0000-0000-000000000000",
    "clientSecret": "000000000000",
    "scopes": "openid email profile",
}
