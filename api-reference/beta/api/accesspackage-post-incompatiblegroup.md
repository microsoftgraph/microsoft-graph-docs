---
title: "Add group to incompatibleGroups"
description: "Add a link to indicate a group is incompatible with a specified access package."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Add group to incompatibleGroups

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [group](../resources/group.md) to the list of groups that have been marked as incompatible on an [accessPackage](../resources/accesspackage.md).  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleGroups/$ref
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of a structure with the OData id of the URI of a [group](../resources/group.md) object.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "add_incompatiblegroup_to_accesspackage"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleGroups/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2"
}

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 Created
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Add incompatibleGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

