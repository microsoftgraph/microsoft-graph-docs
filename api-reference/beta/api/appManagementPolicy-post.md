---
title: "Create an application management policy."
description: "Create an application management policy."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get defaultAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [appManagementPolicy](../resources/appManagementPolicy.md) object.

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
POST /policies/appManagementPolicies
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON representation of an [appManagementPolicy](../resources/appManagementPolicy.md).

## Response

If successful, this method returns a `201 OK` response code with the new object in the response payload.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_appManagementPolicies"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/policies/appManagementPolicies

{
    "displayName": "Credential management policy",
    "description": "Cred policy sample",
    "isEnabled": true,
    "restrictions": {
        "passwordCredentials": [
            {
                "restrictionType": "passwordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z"
            },
            {
                "restrictionType": "passwordLifetime",
                "maxLifetime": "P4DT12H30M5S",
                "restrictForAppsCreatedAfterDateTime": "2018-10-19T10:37:00Z"
            }
        ]
    }
}

```

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appManagementPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/appManagementPolicies/$entity",
    "id": "a4ab1ed9-46bb-4bef-88d4-86fd6398dd5d",
    "displayName": "credential management policy",
    "description": "Lorem ipsum",
    "isEnabled": true,
    "restrictions": {
        "passwordCredentials": [
            {
                "restrictionType": "passwordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z"
            },
            {
                "restrictionType": "passwordLifetime",
                "maxLifetime": "P4DT12H30M5S",
                "restrictForAppsCreatedAfterDateTime": "2018-10-19T10:37:00Z"
            }
        ]
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "create appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
