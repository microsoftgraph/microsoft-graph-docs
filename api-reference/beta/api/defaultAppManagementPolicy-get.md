---
title: "Get default app management policy"
description: "Read the default tenant policy that applies to applications and service principals objects."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get defaultAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [defaultAppManagementPolicy](../resources/defaultAppManagementPolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions                                                |
| :------------------------------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Policy.Read.All, Policy.ReadWrite.ApplicationConfiguration |
| Delegated (personal Microsoft account) | Not supported.                                             |
| Application                            | Policy.Read.All, Policy.ReadWrite.ApplicationConfiguration |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/defaultAppManagementPolicy
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [defaultAppManagementPolicy](../resources/defaultAppManagementPolicy.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_defaultAppManagementPolicy"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/defaultAppManagementPolicy
```

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.defaultAppManagementPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/defaultAppManagementPolicy",
    "id": "db9d4b58-3488-4da4-9994-49773c454e33",
    "displayName": "Default app management tenant policy",
    "description": "Default tenant policy that enforces app management restrictions on applications and service principals.",
    "isEnabled": false,
    "applicationRestrictions": {
        "passwordCredentials": []
    },
    "servicePrincipalRestrictions": {
        "passwordCredentials": []
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get defaultAppManagementPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
