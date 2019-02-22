---
title: "Get a user"
description: "Retrieve the properties and relationships of user object."
author: "dkershaw10"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
---

# Get a user

Retrieve the properties and relationships of user object.

> Note: Getting a user returns a default set of properties only (*businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName*). Use `$select` to get the other properties and relationships for the [user](../resources/user.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | User.Read, User.ReadWrite    |
|Application | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request
For a specific user:
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}
```

For the signed-in user:
<!-- { "blockType": "ignored" } -->
```http
GET /me
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

By default, only a limited set of properties are returned ( _businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName_ ). 

To return an alternative property set, you must specify the desired set of [user](../resources/user.md) properties using the OData `$select` query parameter. For example, to return _displayName_, _givenName_, and _postalCode_, you would use the add the following to your query `$select=displayName,givenName,postalCode`

## Request headers
| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer {token}. Required. |
| Content-Type   | application/json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [user](../resources/user.md) object in the response body.

## Examples

### Example 1: Standard users request

By default, only a limited set of properties are returned ( _businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName_ ). This example illustrates the default request and response. 

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/users/{id | userPrincipalName}
```

##### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
  "businessPhones": [
       "businessPhones-value"
   ],
   "displayName": "displayName-value",
   "givenName": "givenName-value",
   "jobTitle": "jobTitle-value",
   "mail": "mail-value",
   "mobilePhone": "mobilePhone-value",
   "officeLocation": "officeLocation-value",
   "preferredLanguage": "preferredLanguage-value",
   "surname": "surname-value",
   "userPrincipalName": "userPrincipalName-value",
   "id": "id-value"
}
```


### Example 2: Signed-in user request

You can get the user information for the signed-in user by replacing `/users/{id | userPrincipalName}` with `/me`.

##### Request

<!-- {
  "blockType": "request",
  "name": "get_user"
}-->
```http
GET https://graph.microsoft.com/v1.0/me
```
##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
  "businessPhones": [
       "businessPhones-value"
   ],
   "displayName": "displayName-value",
   "givenName": "givenName-value",
   "jobTitle": "jobTitle-value",
   "mail": "mail-value",
   "mobilePhone": "mobilePhone-value",
   "officeLocation": "officeLocation-value",
   "preferredLanguage": "preferredLanguage-value",
   "surname": "surname-value",
   "userPrincipalName": "userPrincipalName-value",
   "id": "id-value"
}
```

### Example 3: Users request using $select

If you need a different property set, you can use the OData `$select` query parameter. For example, to return _displayName_, _givenName_, and _postalCode_, you would use the add the following to your query `$select=displayName,givenName,postalCode`

##### Request
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/users/{id | userPrincipalName}?$select=displayName,givenName,postalCode
```
##### Response
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
   "displayName": "displayName-value",
   "givenName": "givenName-value",
   "postalCode": "postalCode-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get user",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
