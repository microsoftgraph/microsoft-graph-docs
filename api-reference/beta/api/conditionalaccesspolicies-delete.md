---
title: "Delete conditionalAccessPolicies"
description: "Delete a conditionalAccessPolicy object."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Delete conditionalAccessPolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:--------------- |:------------------------------------------- |
| Delegated (work or school account) | Directory.AccessAsUser.All	|
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /conditionalAccess/policies/{id}
```

## Request headers

| Header | Value |
|:------ |:----- |
| Authorization  | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

The following example deletes a conditionalAccessPolicy object.

### Request

The following is an example of the request.

```http
DELETE https://graph.microsoft.com/beta/conditionalAccess/policies/{id}
```

##### Response

The following is an example of the response. 

> **Note:** The response object shown here may be truncated for brevity. All of the properties are returned from an actual call.

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
