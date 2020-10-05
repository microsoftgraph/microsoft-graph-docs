---
title: "Create a new permissionGrantPolicy"
description: "Creates a new permissionGrantPolicy describing the conditions under which permissions may be granted."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# Create a permissionGrantPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a new [permissionGrantPolicy](../resources/permissiongrantpolicy.md). A permission grant policy is used to describe the conditions under which permissions can be granted (for example, during application consent).

After creating the permission grant policy, you can [add include condition sets](permissiongrantpolicy-post-includes.md) to add matching rules, and [add exclude condition sets](permissiongrantpolicy-post-excludes.md) to add exclusion rules.

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
POST /policies/permissionGrantPolicies
```

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization | Bearer {token}. Required.  |
| Content-type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of an [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [permissionGrantPolicy](../resources/permissiongrantpolicy.md) object in the response body.

## Examples

### Request

Here is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "truncated": true,
  "name": "create_permissiongrantpolicy"
}-->

```http
POST https://graph.microsoft.com/beta/policies/permissionGrantPolicies
Content-Type: application/json
Content-Length: 110

{
  "id": "my-custom-consent-policy",
  "displayName": "Custom application consent policy",
  "description": "A custom permission grant policy to customize conditions for granting consent."
}
```

---

### Response

Here is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 281

{
  "id": "my-custom-consent-policy",
  "displayName": "Custom application consent policy",
  "description": "A custom permission grant policy to customize conditions for granting consent."
}
```
