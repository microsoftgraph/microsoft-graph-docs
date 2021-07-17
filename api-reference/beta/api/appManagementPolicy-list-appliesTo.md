---
title: "List resources assigned to an app management policy"
description: "List resources assigned to an application management policy."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get defaultAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List resources assigned to an [appManagementPolicy](../resources/appManagementPolicy.md) policy object.

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
GET /policies/appManagementPolicies/{id}/appliesTo
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appManagementPolicy](../resources/appManagementPolicy.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_appManagementPolicies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}/appliesTo?$select=id,appId,displayName,createdDateTime
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects(id,appId,displayName,createdDateTime)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.application",
      "id": "0d77e011-2fc6-438f-8b93-decb4f926929",
      "appId": "8f527de6-05c9-4032-bca9-b2b56ab2358a",
      "displayName": "MyPolicyTestApp",
      "createdDateTime": "2018-01-24T05:55:37Z"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "list resources for appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
