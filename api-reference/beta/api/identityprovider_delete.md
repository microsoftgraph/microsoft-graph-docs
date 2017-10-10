# Delete identityProvider

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Delete an existing [identityProvider](../resources/identityprovider.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.ReadWrite.All|


## HTTP request

```http
DELETE /identityProviders/{id}
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204, No Content` response code.

## Example

The following example deletes an identityProvider.

### Example Request

Here is an example of the request.

```http
DELETE https://graph.microsoft.com/beta/identityProviders/Amazon-OAuth
```

### Example Response

Here is an example of the response.

```http
HTTP/1.1 204 No Content
```
