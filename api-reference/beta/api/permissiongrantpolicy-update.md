---
title: "Update permissionGrantPoliciy"
description: "Update a permissionGrantPolicy object."
localization_priority: Normal
doc_type: "apiPageType"
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# Update permissionGrantPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties of a  [permissionGrantPolicy](../resources/permissiongrantpolicy.md). 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.ReadWrite.PermissionGrant |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.ReadWrite.PermissionGrant |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /policies/permissionGrantPolicies/{id}
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type |Description|
|:---------------|:--------|:----------|
| displayName | String |The display name for the permission grant policy.|
| description |String| The description for the permission grant policy.|

## Response

If successful, this method returns a `204 No Content` response code and does not return anything in the response body.

## Examples

### Request

The following is an example of the request to update the display name of a custom permission grant policy.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_permissiongrantpolicy"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/policies/permissionGrantPolicies/my-custom-consent-policy
Content-Type: application/json
Content-Length: 110

{
  "displayName": "Custom permission grant policy"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPolicy",
  "isCollection": false
} -->

```http
HTTP/1.1 204 No Content
```
