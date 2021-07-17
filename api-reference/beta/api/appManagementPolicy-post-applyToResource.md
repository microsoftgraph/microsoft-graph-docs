---
title: "Assign an app management policy to an application or service principal."
description: "Assign a policy to application or service principal object."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get defaultAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign an [appManagementPolicy](../resources/appManagementPolicy.md) policy object to an application or service principal object.

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
POST /applications/{id}/appManagementPolicies/$ref
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

In the request body, provide a reference to a policy object from the appManagementPolicies collection.

## Response

If successful, this method returns a `204 OK` response code and a collection of [appManagementPolicy](../resources/appManagementPolicy.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_appManagementPolicies"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/applications/{id}/appManagementPolicies/$ref

{
 "@odata.id":"https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
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
HTTP/1.1 204 OK
Content-type: application/json

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
