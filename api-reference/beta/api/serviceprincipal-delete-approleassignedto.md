---
title: "Delete an appRoleAssignment granted for a service principal"
description: "Delete an appRoleAssignment granted for a service principal."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "applications"
author: "sureshja"
---

# Delete an appRoleAssignment granted for a service principal

Namespace: microsoft.graph

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes an [appRoleAssignment](../resources/approleassignment.md) that a user, group, or client service principal has been granted for a resource service principal.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AppRoleAssignment.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AppRoleAssignment.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /servicePrincipals/{resource-SP-id}/appRoleAssignedTo/{principal-id}
```

> [!NOTE]
> As a best practice, we recommend deleting app role assignments through the `appRoleAssignedTo` relationship of the _resource_ service principal, instead of the `appRoleAssignments` relationship of the assigned user, group, or service principal.

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

Here is an example of the request to delete an app role assignment from the resource service principal.

<!-- {
  "blockType": "request",
  "name": "serviceprincipal_delete_approleassignedto"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{resource-SP-id}/appRoleAssignedTo/{principal-id}
```

In this example, `{resource-SP-id}` would be the id of the resource service principal, and `{principalId}` would be the id of the assigned user, group, or client service principal.

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete appRoleAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



