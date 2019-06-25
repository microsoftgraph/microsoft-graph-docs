---
title: "Create organizationalBranding"
description: "Use this API to delete an existing organizationalBranding."
localization_priority: Normal
author: "anchanda"
ms.prod: "branding"
doc_type: "apiPageType"
---

# Create organizationalBranding

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to delete existing [organizationalBranding](../resources/organizationalbranding.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported |
| Application                            | Organization.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /organization/{id}/brandings/{locale}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer token |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 (No Content)` response code.

## Examples

### Request

The following is an example of create branding request.
<!-- {
  "blockType": "request",
  "name": "delete_organizationalbranding_from_organization"
}-->

```http
DELETE https://graph.microsoft.com/beta/organization/{id}/brandings/en-US
```

### Response

```http
HTTP/1.1 204 No Content
Content-type: application/json
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete organizationalBranding",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
