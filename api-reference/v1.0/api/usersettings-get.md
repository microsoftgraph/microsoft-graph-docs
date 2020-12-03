---
title: "Get settings"
description: "Read the user and organization settings object."
author: "krbain"
localization_priority: Priority
ms.prod: "users"
doc_type: apiPageType
---

# Get settings

Namespace: microsoft.graph

Read the user and organization [userSettings](../resources/usersettings.md) object.
To learn how to update the properties of the [userSettings](../resources/usersettings.md) object, see [update user settings](usersettings-update.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read.All, User.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.Read.All,User.ReadWrite.All |

## HTTP request

```http
GET /me/settings/
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference).

```http
GET /users/{id | userPrincipalName}/settings/
```

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [userSettings](../resources/usersettings.md) object in the response body.

## Example

##### Request

```http
GET https://graph.microsoft.com/v1.0/me/settings
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 72

{
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": false
}
```


