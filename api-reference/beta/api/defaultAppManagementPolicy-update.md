---
title: "Update default app management policy"
description: "Update the default tenant policy that applies to applications and service principals objects."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Update defaultAppManagementPolicy

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
PATCH /policies/defaultAppManagementPolicy
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields from the [defaultAppManagementPolicy](../resources/defaultAppManagementPolicy.md) that should be updated. Existing properties that are not included in the request body will maintain their previous values. For best performance, do not include unchanged values in the request payload.

## Response

If successful, this method returns a 204 No Content response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_defaultAppManagementPolicy"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/policies/defaultAppManagementPolicy
Content-Type: application/json

{
    "isEnabled": true,
    "applicationRestrictions": {
        "passwordCredentials": [
            {
                "restrictionType": "passwordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2021-04-01T10:37:00Z"
            },
            {
                "restrictionType": "passwordLifetime",
                "maxLifetime": "P4DT12H30M5S",
                "restrictForAppsCreatedAfterDateTime": "2019-01-01T10:37:00Z"
            }
        ]
    }
}
```

---

### Response

If successful, this method returns a 204 No Content response code. It does not return anything in the response body.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update defaultAppManagementPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
