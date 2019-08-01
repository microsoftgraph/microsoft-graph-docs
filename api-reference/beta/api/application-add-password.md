---
title: "Add application password"
description: "Adds a strong password to an application."
author: "davidmu1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Add application password

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds a strong password to an application.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/addPassword
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and password object in the response body. Azure AD generates a strong password which is returned via the `secretText` property. There is no way to retrieve this password in the future.

## Example
##### Request
Here is an example of the request.

```http
POST https://graph.microsoft.com/beta/applications/{id}/addPassword
```
##### Response
Here is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1044

{
    "customKeyIdentifier": "Binary",
    "endDateTime": "String (timestamp)",
    "keyId": "String (identifier)",
    "startDateTime": "String (timestamp)",
    "secretText": "String",
    "hint": "String"
}
```
