---
title: "Add a delegatedPermissionClassification to a service principal"
description: "Classify a permission by adding a delegatedPermissionClassification to the API's service principal."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# Add a delegatedPermissionClassification to a service principal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Classify a delegated permission by adding a delegatedPermissionClassification to the [servicePrincipal](../resources/servicePrincipal.md) representing the API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PermissionGrantPolicy.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PermissionGrantPolicy.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/delegatedPermissionClassifications
```

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization | Bearer {token}. Required.  |
| Content-type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of an [delegatedPermissionClassification](../resources/delegatedPermissionClassification.md) object.

## Response

If successful, this method returns a `201 Created` response code and an [delegatedPermissionClassification](../resources/delegatedPermissionClassification.md) object in the response body.

## Examples

### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_create_delegatedpermissionclassification"
}-->

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/delegatedPermissionClassifications
Content-Type: application/json
Content-Length: 110

{
  "permissionId": "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
  "permissionName": "User.Read",
  "classification": "low"
}
```

In this example, the delegated permission "User.Read" is being classified "low".

### Response

Here is an example of the response. 

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedPermissionClassification"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 253

{
  "id": "2G3-4TG6YU2J54hjnaRoPQE",
  "permissionId": "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
  "permissionName": "User.Read",
  "classification": "low"
}
```
